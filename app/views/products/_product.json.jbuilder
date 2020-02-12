json.extract! product, :id, :name, :product_code, :total_available_quantity, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
