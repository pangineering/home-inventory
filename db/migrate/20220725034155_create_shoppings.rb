class CreateShoppings < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppings do |t|
      t.string :date
      t.string :location
      t.string :total
      t.string :list

      t.timestamps
    end
  end
end
