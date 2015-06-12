json.array!(@contact_details) do |contact_detail|
  json.extract! contact_detail, :userId, :phone1, :phone2, :email1, :email2, :birthPlace, :residence
  json.url contact_detail_url(contact_detail, format: :json)
end