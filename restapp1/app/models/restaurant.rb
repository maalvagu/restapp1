class Restaurant < ActiveRecord::Base

	has_many :restaurant_products 
	has_many :products , through: :restaurant_products
  
end
