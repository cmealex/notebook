json.array!(@categories) do |category|
  json.extract! category, :type
  json.url category_url(category, format: :json)
end