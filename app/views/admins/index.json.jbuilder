json.array!(@admins) do |admin|
  json.extract! admin, :id, :email, :first_name, :last_name, :payment_method
  json.url admin_url(admin, format: :json)
end
