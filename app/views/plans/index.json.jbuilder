json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :price, :billing_cycle, :next_billing_date, :deadline_date, :admin_id
  json.url plan_url(plan, format: :json)
end
