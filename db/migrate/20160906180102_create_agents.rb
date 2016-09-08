class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      # Agent informatiodescriptionn
      t.string :name
      t.string :address
      t.string :phone
      t.string :pic

      t.timestamps null: false
    end
  end
end
