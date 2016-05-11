json.array!(@users) do |user|
  json.extract! user, :id, :name_first, :name_last, :email, :postcode, :photo, :admin
  json.url user_url(user, format: :json)
end
