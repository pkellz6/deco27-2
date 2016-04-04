json.array!(@categories) do |category|
  json.extract! category, :id, :show
  json.url category_url(category, format: :json)
end
