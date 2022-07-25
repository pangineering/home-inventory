class CreateFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :families do |t|
      t.string :fam_id
      t.string :fam_name

      t.timestamps
    end
  end
end
