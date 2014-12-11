json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :nit, :phone, :address, :neightborhood_id
  json.url restaurant_url(restaurant, format: :json)
end
