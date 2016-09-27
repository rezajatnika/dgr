class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      # Association
      t.belongs_to :order

      # Information
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
