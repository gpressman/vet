class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :graduated_from
      t.integer :years_in_practice

      t.timestamps null: false
    end
  end
end
