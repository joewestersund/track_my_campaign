class CreateSurveyEmails < ActiveRecord::Migration
  def change
    create_table :survey_emails do |t|
      t.integer :database_instance_id
      t.integer :contact_id
      t.string :email_address
      t.date :sent_date
      t.string :subject
      t.text :message
      t.integer :survey_monkey_respondent_id
      t.boolean :response_received
      t.date :reminder_sent_date

      t.timestamps
    end
  end
end
