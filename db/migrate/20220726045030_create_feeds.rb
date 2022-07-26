class CreateFeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :feeds do |t|
      t.string :f_id
      t.string :title
      t.string :body
      t.string :type
      t.string :date
      t.string :by

      t.timestamps
    end
  end
end
