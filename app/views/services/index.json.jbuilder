json.array!(@services) do |service|
  json.extract! service, :id, :service_name, :cost, :time, :description
  json.url service_url(service, format: :json)
end
