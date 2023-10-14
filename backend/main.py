import boto3
import time
import pymongo
import uuid
import datetime
from typing import Dict
from typing_extensions import Annotated
from fastapi import FastAPI, File, Form, UploadFile
from fastapi.responses import StreamingResponse
from fastapi.middleware.cors import CORSMiddleware
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

minio_endpoint_url = "http://minio:9000"
s3 = boto3.client('s3',
    endpoint_url=minio_endpoint_url,
    aws_access_key_id="minioadmin",
    aws_secret_access_key="minioadmin",
)

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

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
    date: datetime.date
    price: float
    currency: str
    paid_by: str
    split_type: str
    debtors: Dict[str, float]
    receipt_url: str | None = None

    @field_validator("date")
    @classmethod
    def validate_date(cls, date):
        if isinstance(date, datetime.date):
            return date.strftime("%Y-%m-%d")
        return date

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
async def post_receipt(expense_id: ExpenseId = Form(...), file: UploadFile = File(...)):
    expense_query = {"expense_id": str(expense_id)}
    mongo_client.splitfree.expenses.find_one(expense_query)
    try:
        s3.upload_fileobj(file.file, 'splitfree', str(expense_id))
    except Exception as e:
        print(e)
    receipt_url = f"{minio_endpoint_url}/splitfree/{expense_id}}}"
    mongo_client.splitfree.expenses.update_one(
        expense_query,
        { "$set": {"receipt_url": receipt_url} }
    )

@app.get("/api/receipt/{expense_id}")
async def get_receipt(expense_id: ExpenseId):
    try:
        result = s3.get_object(Bucket="splitfree", Key=str(expense_id))
        return StreamingResponse(result["Body"].iter_chunks())
    except Exception as e:
        print(e)
