json.extract! sold_product, :id, :product_id, :invoice_id, :sold_price, :sold_quantity, :created_at, :updated_at
json.url sold_product_url(sold_product, format: :json)
