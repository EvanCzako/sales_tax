class AddNullConstraintToBasketId < ActiveRecord::Migration[6.1]
  def change
    change_column_null :items, :basket_id, false
  end
end
