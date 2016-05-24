json.array!(@users) do |user|
  json.extract! user, :id, :email, :first_name, :last_name, :contact, :payment_details, :admin_id
  json.url user_url(user, format: :json)
end
