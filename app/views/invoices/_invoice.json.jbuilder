json.extract! invoice, :id, :invoice_no, :invoice_date, :total_cost, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
