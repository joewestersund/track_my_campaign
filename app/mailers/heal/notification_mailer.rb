class Heal::NotificationMailer < ActionMailer::Base
  default from: "no-reply@trackmycampaign.herokuapp.com"
  helper HealHelper
  helper UsersHelper

  def followup_task_email(followup_task, cc_assigner)
    @followup_task = followup_task
    @followup_task_url  = heal_followup_task_url(@followup_task)
    @communication_url  = heal_communication_url(@followup_task.prior_communication) if @followup_task.prior_communication.present?

    if cc_assigner && (@followup_task.assigned_by.email != @followup_task.assigned_to.email)
      cc = @followup_task.assigned_by.email_address_with_name
    end

    to = @followup_task.assigned_to.email_address_with_name

    mail(to: to, cc: cc, subject: "a Heal Cities followup task has been assigned to you: #{@followup_task.description.truncate(20, separator: ' ') if @followup_task.description.present? } ")
  end

end
