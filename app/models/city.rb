class City < ActiveRecord::Base
  belongs_to :dpto
  has_many :restaurants
end