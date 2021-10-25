class AddPriceToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :price, :float
    change_column_null :items, :price, false
  end
end
