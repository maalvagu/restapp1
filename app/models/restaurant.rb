class Restaurant < ActiveRecord::Base
	belongs_to :city
	has_many :restaurant_products 
	has_many :products , through: :restaurant_products
end
