class AddCityToRestaurant < ActiveRecord::Migration
  def change
    add_reference :restaurants, :city, index: true
  end
end
