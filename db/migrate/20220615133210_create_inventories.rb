class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :item_id
      t.string :item_name
      t.integer :item_qty
      t.string :item_purchase_date

      t.timestamps
    end
  end
end
