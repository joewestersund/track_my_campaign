json.array!(@survey_emails) do |survey_email|
  json.extract! survey_email, :id, :database_instance_id, :contact_id, :email_address, :sent_date, :subject, :message, :survey_monkey_respondent_id, :response_received, :reminder_sent_date
  json.url survey_email_url(survey_email, format: :json)
end
