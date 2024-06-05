from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from models import Invoice as InvoiceModel, Dokter, Pasien
from database import get_db
from schemas import Invoice, InvoiceCreate
from dependencies import JWTBearer
import random
import string
from datetime import datetime
from io import BytesIO
import qrcode
from fastapi.responses import StreamingResponse
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from typing import List

invoice_router = APIRouter(
    prefix='/invoices',
    tags=['invoices'],
    dependencies=[Depends(JWTBearer())]
)

@invoice_router.post("/", response_model=Invoice)
def create_invoice_endpoint(invoice: InvoiceCreate, db: Session = Depends(get_db)):
    try:
        # Generate unique invoice number with prefix 'INV'
        invoice_number = f"INV{''.join(random.choices(string.digits, k=5))}"
        
        # Get current date and time
        current_time = datetime.now()
        
        # Generate QR code
        qr = qrcode.QRCode(
            version=1,
            error_correction=qrcode.constants.ERROR_CORRECT_L,
            box_size=10,
            border=4,
        )
        qr.add_data(invoice_number)
        qr.make(fit=True)

        img = qr.make_image(fill_color="black", back_color="white")

        # Convert image to bytes
        img_byte_array = BytesIO()
        img.save(img_byte_array, format='PNG')
        img_byte_array.seek(0)
        
        qrcode_str = img_byte_array.getvalue().hex()

        # Create InvoiceModel object
        db_invoice = InvoiceModel(
            no_invoice=invoice_number,
            no_antrian=invoice.no_antrian,
            tgl_invoice=current_time.date(),
            waktu_invoice=current_time,  # Change here, use current_time directly
            id_dokter_i=invoice.id_dokter_i,
            id_pasien_i=invoice.id_pasien_i,
            qrcode=qrcode_str,
            pdf_invoice=""  # Initialize with empty string
        )
        
        # Add and commit to database
        db.add(db_invoice)
        db.commit()
        db.refresh(db_invoice)

        # Create PDF invoice
        pdf_buffer = BytesIO()
        c = canvas.Canvas(pdf_buffer, pagesize=letter)
        width, height = letter

        # Add text to PDF
        c.drawString(100, height - 100, f"Invoice Number: {invoice_number}")
        c.drawString(100, height - 120, f"Queue Number: {invoice.no_antrian}")
        c.drawString(100, height - 140, f"Date: {current_time.date()}")
        c.drawString(100, height - 160, f"Time: {current_time.time()}")
        c.drawString(100, height - 180, f"Doctor ID: {invoice.id_dokter_i}")
        c.drawString(100, height - 200, f"Patient ID: {invoice.id_pasien_i}")

        # Add QR code image to PDF
        qr_code_img = qrcode.make(invoice_number)
        img_path = "/tmp/qrcode.png"
        qr_code_img.save(img_path)
        c.drawImage(img_path, 100, height - 300, 200, 200)

        c.showPage()
        c.save()

        pdf_buffer.seek(0)
        pdf_bytes = pdf_buffer.getvalue()

        # Convert PDF to hex string
        pdf_hex_str = pdf_bytes.hex()

        # Update PDF invoice in the database
        db_invoice.pdf_invoice = pdf_hex_str
        db.commit()
        db.refresh(db_invoice)
        
        return db_invoice
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"An error occurred while creating the invoice: {e}")

@invoice_router.get("/patient/{id_pasien}", response_model=List[Invoice])
def get_patient_history(id_pasien: int, db: Session = Depends(get_db)):
    try:
        patient_history = db.query(InvoiceModel).filter(InvoiceModel.id_pasien_i == id_pasien).all()
        if not patient_history:
            raise HTTPException(status_code=404, detail="No records found for this patient")
        
        # Convert InvoiceModel objects to Invoice objects
        invoices = [Invoice(
            id_invoice=item.id_invoice,
            no_invoice=item.no_invoice,
            no_antrian=item.no_antrian,
            tgl_invoice=item.tgl_invoice,
            waktu_invoice=item.waktu_invoice,
            id_dokter_i=item.id_dokter_i,
            id_pasien_i=item.id_pasien_i,
            qrcode=item.qrcode,
            pdf_invoice=item.pdf_invoice
        ) for item in patient_history]
        
        return invoices
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"An error occurred while retrieving patient history: {e}")