json.array!(@plusrs) do |plusr|
  json.extract! plusr, :id, :plan_id, :user_id
  json.url plusr_url(plusr, format: :json)
end
