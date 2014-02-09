class ChangeCommunicationsRenameContactInterestLevel < ActiveRecord::Migration
  def change
    rename_column :communications, :contact_interest_level_id, :interest_level_id
  end
end
