json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :nit, :phone, :address, :city.name, :neightborhood
  json.url restaurant_url(restaurant, format: :json)
end
