class UserResource < JSONAPI::Resource
  attributes :email, :first_name, :last_name, :password, :api_key
end
