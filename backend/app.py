from fastapi.middleware.cors import CORSMiddleware
from fastapi import FastAPI
import database

app = FastAPI()

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:8080"],  # Frontend origin
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/campaigns")
async def get_campaigns():
    conn = await database.connect_to_db()
    campaigns = await conn.fetch("SELECT * FROM Paid_Social")
    await database.disconnect_from_db(conn)
    return campaigns