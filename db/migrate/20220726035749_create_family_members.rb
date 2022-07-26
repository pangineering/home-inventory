class CreateFamilyMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :family_members do |t|
      t.string :f_id
      t.string :m_id
      t.string :name
      t.string :dob
      t.string :role
      t.string :gender

      t.timestamps
    end
  end
end
