json.array!(@user_invalidities) do |user_invalidity|
  json.extract! user_invalidity, :userId, :invalidityId, :grade
  json.url user_invalidity_url(user_invalidity, format: :json)
end