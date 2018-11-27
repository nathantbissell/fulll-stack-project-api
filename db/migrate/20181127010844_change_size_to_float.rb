class ChangeSizeToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :size, :float
  end
end
