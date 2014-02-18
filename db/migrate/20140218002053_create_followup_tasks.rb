class CreateFollowupTasks < ActiveRecord::Migration
  def change
    create_table :followup_tasks do |t|
      t.integer :database_instance_id
      t.date :due_date
      t.text :description
      t.integer :assigned_to_id
      t.integer :assigned_by_id
      t.integer :prior_communication_id
      t.boolean :completed
      t.date :completed_date
      t.integer :completed_by_id
      t.text :completion_notes

      t.timestamps
    end
  end
end
