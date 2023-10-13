import pymongo
from fastapi import FastAPI
from pydantic import BaseModel
mongo_client = pymongo.MongoClient("mongodb",
                                   username="splitfree",
                                   password="splitfree",
                                   authSource="splitfree")

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


class Expense(BaseModel):
    name: str
    price: float

@app.post("/expense")
async def expense(expense: Expense):
    mongo_client.splitfree.expenses.insert_one(expense.dict())
    return expense

