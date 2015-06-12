json.array!(@documents) do |document|
  json.extract! document, :userId, :docPath, :type
  json.url document_url(document, format: :json)
end