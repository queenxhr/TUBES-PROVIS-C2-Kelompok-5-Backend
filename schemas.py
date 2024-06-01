from pydantic import BaseModel
from datetime import datetime
from typing import List
from typing import Optional, Any

class ResponseBase(BaseModel):
    message: str
    data: Optional[Any] = None
    error: bool

class UserResponseData(BaseModel):
    username: str
    id_user: Optional[int] = None
    nama: str
    nik: str
    tmpt: str
    tl: datetime
    jk: str
    telp: str
    email: str
    
class UserCreate(BaseModel):
    nama_user: str 
    nik_user: str
    tmpt_lahir_user: str
    tl_user: datetime
    jk_user: str
    alamat_user: str
    telp_user: str
    email_user: str
    pass_user: str
    username: str

class UserLogin(BaseModel):
    username: str
    password: str
    
class changepassword(BaseModel):
    username: str
    old_password: str
    new_password: str

class PasswordChangeResponseData(BaseModel):
    pass
    
class TokenResponseData(BaseModel):
    access_token: str
    refresh_token: str
    id_user: int
    
class TokenCreate(BaseModel):
    user_id: str
    access_token: str
    refresh_token: str
    status: bool
    created_date: datetime

class UserListResponseData(BaseModel):
    id: int
    username: str

class ArtikelCreate(BaseModel):
    id_artikel: int
    judul_artikel: str
    isi_artikel: str
    foto_artikel: str
    
class ArtikelResponseData(BaseModel):
    id_a: int
    judul_a: str
    isi_a: str
    foto_a: str
    
class SpesialisBase(BaseModel):
    nama_spesialis: str

class SpesialisCreate(SpesialisBase):
    pass

class Spesialis(SpesialisBase):
    id_spesialis: int

    class Config:
        orm_mode = True

class HariBase(BaseModel):
    nama_hari: str

class HariCreate(HariBase):
    pass

class Hari(HariBase):
    id_hari: int

    class Config:
        orm_mode = True

class WaktuBase(BaseModel):
    nama_waktu: str

class WaktuCreate(WaktuBase):
    pass

class Waktu(WaktuBase):
    id_waktu: int

    class Config:
        orm_mode = True

class DokterBase(BaseModel):
    nama_dokter: str
    id_spesialis_d: int
    deskripsi_dokter: str

class DokterCreate(DokterBase):
    pass

class Dokter(DokterBase):
    id_dokter: int
    spesialis: Spesialis

    class Config:
        orm_mode = True

class DokterHariWaktuBase(BaseModel):
    id_dokter: int
    id_hari_d: int
    id_waktu_d: int

class DokterHariWaktuCreate(DokterHariWaktuBase):
    pass

class DokterHariWaktu(DokterHariWaktuBase):
    id_dokter_hari_waktu: int
    dokter: Dokter
    hari: Hari
    waktu: Waktu

    class Config:
        orm_mode = True