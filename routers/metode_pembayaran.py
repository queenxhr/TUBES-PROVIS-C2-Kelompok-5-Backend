from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List
from database import get_db
from schemas import *
from dependencies import *
from models import *

mp_router = APIRouter(prefix='/metodepembayaran', tags=['metodepembayaran'])

@mp_router.get("/getallmetodepembayaran", response_model=dict, dependencies=[Depends(JWTBearer())])
async def read_all_hari_endpoint(db: Session = Depends(get_db)):
    metode_pembayaran_list = db.query(MetodePembayaran).all()
    if not metode_pembayaran_list:
        raise HTTPException(status_code=404, detail="Metode pembayaran tidak ditemukan")

    response = [{"id_metode_pembayaran": metode_pembayaran.id_metode_pembayaran, "metode_pembayaran": metode_pembayaran.metode_pembayaran, "kode_metode": metode_pembayaran.kode_metode} for metode_pembayaran in metode_pembayaran_list]

    return {
        "message": "Metode pembayaran berhasil diambil",
        "metode_pembayaran": response
    }
