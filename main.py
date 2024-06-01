from fastapi import FastAPI, Depends
from fastapi.middleware.cors import CORSMiddleware
from database import engine, BaseDB
from routers.auth import auth_router
from routers.artikel import artikel_router
from routers.dokter import dokter_router
from dependencies import get_current_user

app = FastAPI()

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
app.include_router(dokter_router)