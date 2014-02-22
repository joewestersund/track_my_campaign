class CreateContactsFollowupTasks < ActiveRecord::Migration
  def change
    create_table :contacts_followup_tasks, :id => false do |t|
      t.integer :contact_id
      t.integer :followup_task_id
    end
  end
end
