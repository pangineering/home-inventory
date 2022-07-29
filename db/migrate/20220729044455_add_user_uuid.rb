class AddUserUuid < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :family_id, :string
    add_column :users, :user_id, :string
  end
end
