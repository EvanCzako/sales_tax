class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.boolean :imported, null: false
      t.timestamps
    end
  end
end
