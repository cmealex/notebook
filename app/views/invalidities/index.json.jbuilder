json.array!(@invalidities) do |invalidity|
  json.extract! invalidity, :type, :grade
  json.url invalidity_url(invalidity, format: :json)
end