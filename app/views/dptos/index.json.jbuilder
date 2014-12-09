json.array!(@dptos) do |dpto|
  json.extract! dpto, :id, :name
  json.url dpto_url(dpto, format: :json)
end
