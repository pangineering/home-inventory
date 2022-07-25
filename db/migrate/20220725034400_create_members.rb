class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.string :gender

      t.timestamps
    end
  end
end
