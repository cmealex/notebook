json.array!(@users) do |user|
  json.extract! user, :firstName, :lastName, :icSerie, :icNumber, :cnp, :sex, :description, :nationality, :maritalStatus, :children, :contactId
  json.url user_url(user, format: :json)
end