class AddNeightborhoodToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :neightborhood, :string
  end
end
