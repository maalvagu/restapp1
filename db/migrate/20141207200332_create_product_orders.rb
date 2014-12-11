class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.integer :count_product
      t.references :order, index: true
      t.references :restaurant_product, index: true

      t.timestamps
    end
  end
end
