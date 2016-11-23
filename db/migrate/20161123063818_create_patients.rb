class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :dob
      t.string :gender
      t.string :mobile
      t.text :other_info

      t.timestamps null: false
    end
  end
end
