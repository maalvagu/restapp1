class RemoveNeightborhoodIdFromRestaurant < ActiveRecord::Migration
  def change
    remove_column :restaurants, :neightborhood_id, :integer
  end
end
