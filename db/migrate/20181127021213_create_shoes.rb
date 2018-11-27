class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :model
      t.float :size
      t.string :color

      t.timestamps
    end
  end
end
