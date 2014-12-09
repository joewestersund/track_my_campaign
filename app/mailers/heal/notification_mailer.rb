class Heal::NotificationMailer < ActionMailer::Base
  default from: "no-reply@trackmycampaign.herokuapp.com"

  def followup_task_email(followup_task)
    @database_name = current_db.instance_name
    @followup_task = followup_task
    @followup_task_url  = "http://trackmycampaign.herokuapp.com/heal/followup_tasks/#{item.id}"
    @communication_url  = "http://trackmycampaign.herokuapp.com/heal/communications/#{item.prior_communication.id}" if item.prior_communication.present?
    mail(to: "#{@followup_task.first_name} #{@followup_task.last_name}  <#{@followup_task.assigned_to.email}>", subject: "a Heal Cities followup task has been assigned to you: #{truncate_text(@followup_task.description,20)} ")
  end

end
