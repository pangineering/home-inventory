class ChangeStringToArray < ActiveRecord::Migration[7.0]
  def change
    change_column :shoppings, :list, :text, array: true
      
  end
end
