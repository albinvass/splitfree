enum "split_type" {
  schema = schema.expenses
  values = ["percent", "even"]
}
table "expenses" {
  schema = schema.expenses

  primary_key {
    columns = [column.id]
  }

  column "id" {
    null = false
    type = int
  }
  column "description" {
    null = true
    type = text
  }
  column "category" {
    null = true
    type = varchar(100)
  }
  column "date" {
    null = false
    type = timetz
  }
  column "cost" {
    null = false
    type = money
  }
  column "currency" {
    null = false
    type = varchar(100)
  }
  column "paid_by" {
    null = false
    type = varchar(100)
  }
  column "split_type" {
    null = false
    type = enum.split_type
  }
  column "debtors" {
    null = false
    type = json
  }
  column "receipt_url" {
    null = true
    type = text
  }
}
