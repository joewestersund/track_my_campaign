json.array!(@followup_tasks) do |followup_task|
  json.extract! followup_task, :id, :database_instance_id, :due_date, :description, :assigned_to_id, :assigned_by_id, :prior_communication_id, :completed, :completed_date, :completed_by_id, :completion_notes
  json.url followup_task_url(followup_task, format: :json)
end
