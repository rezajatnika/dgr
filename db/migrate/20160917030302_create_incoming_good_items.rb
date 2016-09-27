class CreateIncomingGoodItems < ActiveRecord::Migration
  def change
    create_table :incoming_good_items do |t|
      # Association
      t.belongs_to :incoming_good
      t.belongs_to :product
      t.belongs_to :location

      # Quantity
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
