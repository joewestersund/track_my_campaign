json.array!(@survey_email_sents) do |survey_email_sent|
  json.extract! survey_email_sent, :id, :database_instance_id, :contact_id, :email_address, :sent_date, :subject, :message, :survey_monkey_respondent_id, :response_received, :reminder_sent_date
  json.url survey_email_sent_url(survey_email_sent, format: :json)
end
