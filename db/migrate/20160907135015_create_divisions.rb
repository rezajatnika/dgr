class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      # Information
      t.string :name

      t.timestamps null: false
    end
  end
end
