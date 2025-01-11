class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false, limit: 60
      t.string :email
      t.string :address, limit: 400
      t.float :average_rating, default: 0.0

      t.timestamps
    end
  end
end
