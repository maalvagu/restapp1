json.array!(@orders) do |order|
  json.extract! order, :id, :status_order, :date_order, :user_id
  json.url order_url(order, format: :json)
end
