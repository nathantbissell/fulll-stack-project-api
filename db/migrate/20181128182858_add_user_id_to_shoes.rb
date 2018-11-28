class AddUserIdToShoes < ActiveRecord::Migration[5.2]
  def change
    add_reference :shoes, :user, foreign_key: true
  end
end