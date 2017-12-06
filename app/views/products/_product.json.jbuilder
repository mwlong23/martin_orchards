json.extract! product, :id, :title, :description, :weight, :box_price, :weekly_delivery_price, :created_at, :updated_at
json.url product_url(product, format: :json)
