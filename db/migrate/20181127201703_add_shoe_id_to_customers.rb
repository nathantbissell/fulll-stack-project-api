class AddShoeIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :size, :float
    add_column :users, :fav_brand, :string
    add_column :users, :fav_color, :string
    # mult add add_column, one for shoe to create one-many relation
    # delete prev migration
  end
end
