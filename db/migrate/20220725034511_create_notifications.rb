class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :post_by
      t.string :body
      t.string :date

      t.timestamps
    end
  end
end
