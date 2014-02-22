class CreateCommunicationsStaffInvolved < ActiveRecord::Migration
  def change
    create_table :communications_staff_involved, :id => false do |t|
      t.integer :communication_id
      t.integer :user_id
    end
  end
end
