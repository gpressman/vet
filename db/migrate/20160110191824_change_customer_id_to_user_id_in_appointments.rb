class ChangeCustomerIdToUserIdInAppointments < ActiveRecord::Migration
  def change
  	rename_column :appointments, :customer_id, :user_id
  end
end
