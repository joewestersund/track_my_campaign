class RenameMilestonesToMilestoneTypes < ActiveRecord::Migration
  def change
    rename_table :milestones, :milestone_types
  end
end
