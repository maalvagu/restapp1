class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :status_order
      t.datetime :date_order
      t.references :user, index: true

      t.timestamps
    end
  end
end
