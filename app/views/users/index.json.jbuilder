json.array!(@users) do |user|
  json.extract! user, :id, :email, :crypted_password, :salt, :is_teacher
  json.url user_url(user, format: :json)
end
