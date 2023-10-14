import boto3
import time
import pymongo
import uuid
from typing import Dict
from typing_extensions import Annotated
from fastapi import FastAPI, File, Form, UploadFile
from pydantic import (
    BaseModel,
    UUID4,
    field_validator,
    AfterValidator,
)
mongo_client = pymongo.MongoClient("mongodb",
                                   username="splitfree",
                                   password="splitfree",
                                   authSource="splitfree")
s3 = boto3.client('s3',
    endpoint_url="http://minio:9000",
    aws_access_key_id="minioadmin",
    aws_secret_access_key="minioadmin",
)

app = FastAPI()

ExpenseId = Annotated[
    UUID4,
    AfterValidator(lambda eid: str(eid))
]

@app.get("/")
async def root():
    return {"message": "Hello World"}


class Expense(BaseModel):
    expense_id: ExpenseId
    description: str
    category: str
    timestamp: int
    price: float
    currency: str
    paid_by: str
    split_type: str
    debtors: Dict[str, float]
    receipt_url: str | None = None

@app.get("/api/expense/new")
async def get_expense():
    expense = dict(
        expense_id=str(uuid.uuid4())
    )
    mongo_client.splitfree.expenses.insert_one(expense.copy())
    return expense

@app.post("/api/expense")
async def expense(e: Expense):
    expense = e.dict()
    expense["created_at"] = int(time.time())
    expense["updated_at"] = expense["created_at"]
    expense_query = {"expense_id": expense["expense_id"]}
    mongo_client.splitfree.expenses.find_one(expense_query)
    mongo_client.splitfree.expenses.update_one(
        expense_query,
        { "$set": expense }
    )
    return expense

@app.post("/api/receipt")
async def receipt(expense_id: ExpenseId = Form(...), file: UploadFile = File(...)):
    print(dir(expense_id))
    try:
        s3.upload_fileobj(file.file, 'splitfree', str(expense_id))
    except Exception as e:
        print(e)

    return {"receipt_url": "receipt_url"}

