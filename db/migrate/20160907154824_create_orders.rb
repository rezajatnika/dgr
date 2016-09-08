class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      # Order information
      t.belongs_to :agent, index: true

      # Order date
      t.date :order_date
      t.date :shipment_date

      t.timestamps null: false
    end
  end
end
