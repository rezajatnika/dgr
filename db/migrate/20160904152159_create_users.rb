class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # User information
      t.string :name
      t.string :email

      # User authentication
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      # User access control
      t.integer :role
      t.integer :division_id

      t.timestamps null: false
    end
  end
end
