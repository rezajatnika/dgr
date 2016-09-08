class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      # Asso
      t.belongs_to :product

      # Product in hands
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
