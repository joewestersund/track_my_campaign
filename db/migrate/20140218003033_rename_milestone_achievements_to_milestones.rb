class RenameMilestoneAchievementsToMilestones < ActiveRecord::Migration
  def change
    rename_table :milestone_achievements, :milestones
  end
end
