class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 60
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.string :address, limit: 400
      t.string :role, null: false # 'admin', 'user', 'store_owner'

      t.timestamps
    end
  end
end
