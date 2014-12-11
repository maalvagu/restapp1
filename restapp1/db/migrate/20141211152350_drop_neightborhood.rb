class DropNeightborhood < ActiveRecord::Migration
  def change
  	drop_table :neightborhoods
  end
end