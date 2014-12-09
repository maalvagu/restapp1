class City < ActiveRecord::Base
  has_many :neightborhoods 
  belongs_to :dpto

end
