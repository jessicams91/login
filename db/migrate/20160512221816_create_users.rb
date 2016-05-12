class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :wrong_login_count, default: 0

      t.timestamps null: false
    end
  end
end
