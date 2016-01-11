class ChangeIsDoctorToIsOwnerInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :is_doctor, :is_owner
  end
end
