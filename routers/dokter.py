from fastapi import APIRouter, Depends, HTTPException, File, UploadFile, Form
from sqlalchemy.orm import Session
import os
from fastapi.responses import FileResponse
from typing import List
from models import *
from database import get_db
from schemas import *
from dependencies import *

dokter_router = APIRouter(prefix='/dokters', tags=['dokters'])

# CRUD Operations

def get_dokters(db: Session, skip: int = 0, limit: int = 100):
    return db.query(Dokter).offset(skip).limit(limit).all()

def get_dokter(db: Session, dokter_id: int):
    return db.query(Dokter).filter(Dokter.id_dokter == dokter_id).first()

def create_dokter(db: Session, dokter: DokterCreate):
    db_dokter = Dokter(
        nama_dokter=dokter.nama_dokter,
        id_spesialis_d=dokter.id_spesialis_d,
        deskripsi_dokter=dokter.deskripsi_dokter
    )
    db.add(db_dokter)
    db.commit()
    db.refresh(db_dokter)
    return db_dokter

def delete_dokter(db: Session, dokter_id: int):
    db_dokter = db.query(Dokter).filter(Dokter.id_dokter == dokter_id).first()
    if db_dokter:
        db.delete(db_dokter)
        db.commit()
    return db_dokter

# Router Endpoints

@dokter_router.post("/dokters/", response_model=Dokter, dependencies=[Depends(JWTBearer())])
def create_dokter_endpoint(dokter: DokterCreate, db: Session = Depends(get_db)):
    return create_dokter(db=db, dokter=dokter)

@dokter_router.get("/dokters/", response_model=List[Dokter], dependencies=[Depends(JWTBearer())])
def read_dokters_endpoint(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    dokters = get_dokters(db, skip=skip, limit=limit)
    return dokters

@dokter_router.get("/dokters/{dokter_id}", response_model=Dokter, dependencies=[Depends(JWTBearer())])
def read_dokter_endpoint(dokter_id: int, db: Session = Depends(get_db)):
    db_dokter = get_dokter(db, dokter_id=dokter_id)
    if db_dokter is None:
        raise HTTPException(status_code=404, detail="Dokter not found")
    return db_dokter

@dokter_router.delete("/dokters/{dokter_id}", response_model=Dokter, dependencies=[Depends(JWTBearer())])
def delete_dokter_endpoint(dokter_id: int, db: Session = Depends(get_db)):
    db_dokter = get_dokter(db, dokter_id=dokter_id)
    if db_dokter is None:
        raise HTTPException(status_code=404, detail="Dokter not found")
    return delete_dokter(db=db, dokter_id=dokter_id)

# @dokter_router.post('/', response_model=Dokter)
# def create_dokter(dokter: DokterCreate, db: Session = Depends(get_db)):
#     db_dokter = Dokter(**dokter.dict())
#     db.add(db_dokter)
#     db.commit()
#     db.refresh(db_dokter)
#     return db_dokter

# @dokter_router.get('/', response_model=List[Dokter])
# def read_dokters(skip: int = 0, limit: int = 10, db: Session = Depends(get_db)):
#     dokters = db.query(Dokter).offset(skip).limit(limit).all()
#     return dokters

# @dokter_router.get('/getalldokter', dependencies=[Depends(JWTBearer())])
# async def get_all_dokter(db: Session = Depends(get_db)):
#     dokters = db.query(Dokter).all()
#     return {
#         "message": "Dokter berhasil diambil",
#         "dokters": dokters,
#     }
    
# @dokter_router.get('/getalldokter/', response_model=List[DokterHariWaktu], dependencies=[Depends(JWTBearer())])
# async def get_dokter_hari_waktu(db: Session = Depends(get_db)):
#     return db.query(DokterHariWaktu).all()

# @dokter_router.get('/getdokterby/{id_dokter_hari_waktu}', response_model=DokterHariWaktu, dependencies=[Depends(JWTBearer())])
# async def get_dokter_hari_waktu_by_id(id_dokter_hari_waktu: int, db: Session = Depends(get_db)):
#     db_dokter = db.query(DokterHariWaktu).filter(DokterHariWaktu.id_dokter_hari_waktu == id_dokter_hari_waktu).first()
#     if db_dokter is None:
#         raise HTTPException(status_code=404, detail="Dokter tidak ditemukan")
#     return db_dokter