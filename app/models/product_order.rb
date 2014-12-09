class ProductOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :restaurant_product
end
