class AddLocationToInventories < ActiveRecord::Migration
  def change
    add_reference :inventories, :location, index: true, foreign_key: true
  end
end
