class Order < ActiveRecord::Base
	has_many :product_orders 
	has_many :restaurant_products, through: :product_orders
	
  belongs_to :user
end
