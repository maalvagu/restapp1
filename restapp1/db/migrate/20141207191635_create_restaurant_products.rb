class CreateRestaurantProducts < ActiveRecord::Migration
  def change
    create_table :restaurant_products do |t|
      t.string :rest_product
      t.string :status
      t.float :price
      t.references :restaurant, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
