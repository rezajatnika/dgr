class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      # Product information
      t.string :name
      t.string :code
      t.string :unit

      # Product price
      t.float :price

      t.timestamps null: false
    end
  end
end
