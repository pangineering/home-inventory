class CreateShoppings < ActiveRecord::Migration[7.0]
  def change
    create_table :shoppings do |t|
      t.date :date
      t.string :location
      t.string :total
      t.text :list, array: true, default: []
      t.boolean :done
      t.boolean :status

      t.timestamps
    end
  end
end
