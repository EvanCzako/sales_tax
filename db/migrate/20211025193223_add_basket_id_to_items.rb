class AddBasketIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :basket_id, :integer
  end
end
