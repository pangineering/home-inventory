class CreateBuyLists < ActiveRecord::Migration[7.0]
  def change
    create_table :buy_lists do |t|
      t.date :date
      t.string :location
      t.string :total
      t.text :list
      t.string :shopping_id
      t.boolean :status

      t.timestamps
    end
  end
end
