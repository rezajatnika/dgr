class CreateIncomingGoods < ActiveRecord::Migration
  def change
    create_table :incoming_goods do |t|

      t.timestamps null: false
    end
  end
end
