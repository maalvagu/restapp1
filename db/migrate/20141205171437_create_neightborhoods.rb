class CreateNeightborhoods < ActiveRecord::Migration
  def change
    create_table :neightborhoods do |t|
      t.string :name
      t.references :city, index: true

      t.timestamps
    end
  end
end
