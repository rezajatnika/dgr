class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      # Information
      t.string :address
      t.string :code

      t.timestamps null: false
    end
  end
end
