class CreateCityFollowupTasksJoinTable < ActiveRecord::Migration
  def self.up
    create_table :cities_followup_tasks, :id => false do |t|
      t.integer :city_id
      t.integer :followup_task_id
    end
  end

  def self.down
    drop_table :cities_followup_tasks
  end
end
