class ShoppingList < ActiveRecord::Migration[7.0]
  def change
    change_column :shoppings, :date, :date
    add_column :shoppings, :status, :boolean
    add_column :shoppings, :shopping_id, :string  

  end
end
