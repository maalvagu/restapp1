json.array!(@neightborhoods) do |neightborhood|
  json.extract! neightborhood, :id, :name, :city_id
  json.url neightborhood_url(neightborhood, format: :json)
end
