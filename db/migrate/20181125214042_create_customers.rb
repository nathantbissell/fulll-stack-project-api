class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :username
      t.integer :size
      t.string :fav_brand

      t.timestamps
    end
  end
end
