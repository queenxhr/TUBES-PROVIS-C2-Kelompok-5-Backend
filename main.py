from fastapi import FastAPI, Depends
from fastapi.middleware.cors import CORSMiddleware
from database import engine, BaseDB
from routers.auth import auth_router
from routers.artikel import artikel_router
from routers.dokter import dokter_router
from routers.janjitemu import jt_router
from routers.metode_pembayaran import mp_router
from routers.profil import profil_router
from routers.medcek import medcek_router
# from routers.s_pembayaran_router import s_pembayaran_router
from dependencies import get_current_user

app = FastAPI(title="Life Care Hospital")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
BaseDB.metadata.create_all(bind=engine)
app.include_router(auth_router)
app.include_router(artikel_router)
app.include_router(profil_router)
app.include_router(medcek_router)
app.include_router(dokter_router)
app.include_router(jt_router)
app.include_router(mp_router)
# app.include_router(s_pembayaran_router)