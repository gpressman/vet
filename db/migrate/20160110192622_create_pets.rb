class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :date_of_last_visit

      t.timestamps null: false
    end
  end
end
