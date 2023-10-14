GET http://localhost:8000/api/expense/new
HTTP 200
[Captures]
expense_id: jsonpath "$.expense_id"

POST http://localhost:8000/api/expense
```json
{
    "expense_id": "{{expense_id}}",
    "description": "Hemköp",
    "category": "Livsmedel",
    "date": 2023-10-14,
    "price": 357,
    "currency": "sek",
    "paid_by": "Albin",
    "split_type": "percent",
    "debtors": {
        "Albin": "50",
        "Carolina": "50"
    }
}
```
HTTP 200
