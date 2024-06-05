from fastapi import APIRouter, Depends, HTTPException, File, UploadFile, Form
from sqlalchemy.orm import Session
import os
from fastapi.responses import FileResponse
from database import get_db
from schemas import *
from dependencies import *
from models import *

artikel_router = APIRouter(prefix='/artikels', tags=['artikels'])

# @artikel_router.post('/', response_model=ResponseBase, dependencies=[Depends(JWTBearer())])
# async def create_article(
#     judul_artikel: str = Form(...),
#     isi_artikel: str = Form(...),
#     foto_artikel: UploadFile = File(...),
#     db: Session = Depends(get_db),
#     current_user: User = Depends(get_current_user)
# ):
#     existingartikel = db.query(Artikel).filter(Artikel.judul_artikel == judul_artikel).first()
    
#     if existingartikel:
#         raise HTTPException(status_code=400, detail="Artikel sudah terdaftar")
    
#     try:
#         foto_artikel = await foto_artikel.read()
#         file_location = f"./data_file/{foto_artikel.filename}"
#         with open(file_location, 'wb') as f:
#             f.write(foto_artikel)
#     except Exception:
#         raise HTTPException(status_code=500, detail="Error uploading file")
#     finally:
#         await foto_artikel.close()
        
#     new_article = Artikel(
#         judul_artikel=judul_artikel,
#         isi_artikel=isi_artikel,
#         foto_artikel=file_location
#     )
    
#     db.add(new_article)
#     db.commit()
#     db.refresh(new_article)
    
#     response_data = ArtikelResponseData(
#         id=new_article.id_artikel,
#         judul_a=new_article.judul_artikel,
#         id_a=new_article.id_artikel,
#         isi_a=new_article.isi_artikel,
#         foto_a=new_article.foto_artikel
#     )
#     return ResponseBase(message="Artikel berhasil dibuat", data=response_data, error=False)

@artikel_router.get('/getall', dependencies=[Depends(JWTBearer())])
async def get_all_artikels(db: Session = Depends(get_db)):
    artikels = db.query(Artikel).all()
    return {
        "message": "Artikel berhasil diambil",
        "artikels": artikels,
    }

@artikel_router.get('/getby{id}', response_model=dict, dependencies=[Depends(JWTBearer())])
async def get_artikel(id_artikel: int, db: Session = Depends(get_db)):
    artikel = db.query(Artikel).filter(Artikel.id_artikel == id_artikel).first()
    if artikel is None:
        raise HTTPException(status_code=404, detail="Artikel tidak ditemukan")

    response = ArtikelResponseData(
        id_a= artikel.id_artikel,
        judul_a= artikel.judul_artikel,
        isi_a= artikel.isi_artikel,
        foto_a= artikel.foto_artikel
    )

    return {
        "message": "Artikel berhasil diambil",
        "artikel": response
    }

@artikel_router.get('/foto/{id_artikel}', dependencies=[Depends(JWTBearer())])
async def get_foto_artikel(id_artikel: int, db: Session = Depends(get_db)):
    artikel = db.query(Artikel).filter(Artikel.id_artikel == id_artikel).first()
    if artikel is None or not artikel.foto_artikel:
        raise HTTPException(status_code=404, detail="Foto tidak ditemukan")
    
    file_path = artikel.foto_artikel
    if not os.path.isfile(file_path):
        raise HTTPException(status_code=404, detail="Foto tidak ditemukan")

    return FileResponse(file_path)

@artikel_router.get("/fotoartikel/{foto_a}", dependencies=[Depends(JWTBearer())])
async def get_one_foto_artikel(foto_a: str, db: Session = Depends(get_db)):
    # Assuming foto_a contains the filename of the image
    path = f"../images/{foto_a}"
    if not os.path.exists(path):
        raise HTTPException(status_code=404, detail="File not found")
    return FileResponse(path)