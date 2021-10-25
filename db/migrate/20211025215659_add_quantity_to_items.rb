class AddQuantityToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :quantity, :integer
    change_column_null :items, :quantity, false
  end
end
