class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :nit
      t.string :phone
      t.string :address
      t.references :neightborhood, index: true

      t.timestamps
    end
  end
end
