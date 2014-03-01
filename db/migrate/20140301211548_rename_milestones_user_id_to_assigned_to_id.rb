class RenameMilestonesUserIdToAssignedToId < ActiveRecord::Migration
  def change
    rename_column :milestones, :user_id, :assigned_to_id
  end
end
