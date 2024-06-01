from sqlalchemy import Column, Integer, String, Text, DECIMAL, DateTime, ForeignKey, Boolean
from sqlalchemy.orm import relationship
from database import BaseDB
from datetime import datetime

class User(BaseDB):
    __tablename__ = "user"

    id_user = Column(Integer, primary_key=True, index=True)
    nama_user = Column(String(255))
    nik_user = Column(String(255), unique=True, index=True)
    tmpt_lahir_user = Column(String(255))
    tl_user = Column(DateTime)
    jk_user = Column(String(255))
    alamat_user = Column(String(255))
    telp_user = Column(String(255))
    email_user = Column(String(255))
    pass_user = Column(String(255))
    username = Column(String(255))

    # Relationship
    tokens = relationship("Token", back_populates="user")

class Token(BaseDB):
    __tablename__ = "token"
    user_id = Column(Integer, ForeignKey("user.id_user"), nullable=False)
    access_token = Column(String(450), primary_key=True, index=True)
    refresh_token = Column(String(450), index=True)
    status = Column(Boolean)
    created_date = Column(DateTime, default=datetime.now)

    # Relationship
    user = relationship("User", back_populates="tokens")

class Artikel(BaseDB):
    __tablename__ = 'artikel'

    id_artikel = Column(Integer, primary_key=True)
    judul_artikel = Column(String(255))
    isi_artikel = Column(String(5000))
    foto_artikel = Column(String(255))
    
class Spesialis(BaseDB):
    __tablename__ = 'spesialis'
    id_spesialis = Column(Integer, primary_key=True, index=True)
    nama_spesialis = Column(String(255), nullable=False)

class Hari(BaseDB):
    __tablename__ = 'hari'
    id_hari = Column(Integer, primary_key=True, index=True)
    nama_hari = Column(String(255), nullable=False)

class Waktu(BaseDB):
    __tablename__ = 'waktu'
    id_waktu = Column(Integer, primary_key=True, index=True)
    nama_waktu = Column(String(255), nullable=False)

class Dokter(BaseDB):
    __tablename__ = 'dokter'
    id_dokter = Column(Integer, primary_key=True, index=True)
    nama_dokter = Column(String(255), nullable=False)
    id_spesialis_d = Column(Integer, ForeignKey('spesialis.id_spesialis'), nullable=False)
    deskripsi_dokter = Column(String(255), nullable=False)

    spesialis = relationship('Spesialis')

class DokterHariWaktu(BaseDB):
    __tablename__ = 'dokter_hari_waktu'
    id_dokter_hari_waktu = Column(Integer, primary_key=True, index=True)
    id_dokter = Column(Integer, ForeignKey('dokter.id_dokter'), nullable=False)
    id_hari_d = Column(Integer, ForeignKey('hari.id_hari'), nullable=False)
    id_waktu_d = Column(Integer, ForeignKey('waktu.id_waktu'), nullable=False)

    dokter = relationship('Dokter')
    hari = relationship('Hari')
    waktu = relationship('Waktu')