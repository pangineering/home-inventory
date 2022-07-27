class ChangeArrayToTextForBuyList < ActiveRecord::Migration[7.0]
  def change
    change_column :buy_lists, :list, :text
  end
end
