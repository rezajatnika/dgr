class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      # Asso
      t.belongs_to :agent
      t.belongs_to :product

      # Quantity
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
