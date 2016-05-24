json.array!(@adcoms) do |adcom|
  json.extract! adcom, :id, :admin_id, :company_id
  json.url adcom_url(adcom, format: :json)
end
