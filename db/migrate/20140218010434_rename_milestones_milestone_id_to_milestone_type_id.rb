class RenameMilestonesMilestoneIdToMilestoneTypeId < ActiveRecord::Migration
  def change
    rename_column :milestones, :milestone_id, :milestone_type_id
  end
end
