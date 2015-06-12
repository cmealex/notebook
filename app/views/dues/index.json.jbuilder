json.array!(@dues) do |due|
  json.extract! due, :userId, :sum, :date, :dueType
  json.url due_url(due, format: :json)
end