import asyncpg
import os

DATABASE_URL = "postgresql://admin:123@db:5432/martech_data"

async def connect_to_db():
    return await asyncpg.connect(DATABASE_URL)

async def disconnect_from_db(conn):
    await conn.close()