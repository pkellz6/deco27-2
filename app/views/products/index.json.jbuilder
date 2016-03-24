json.array!(@products) do |product|
  json.extract! product, :id, :name, :category, :price, :image_1, :image_2, :promo
  json.url product_url(product, format: :json)
end
