json.extract! vape_product, :id, :name, :price, :desc, :category, :created_at, :updated_at
json.url vape_product_url(vape_product, format: :json)
