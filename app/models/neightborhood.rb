class Neightborhood < ActiveRecord::Base
  
  has_many :restaurants 
  belongs_to :city


end
