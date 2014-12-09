# == Schema Information
#
# Table name: followup_tasks
#
#  id                     :integer          not null, primary key
#  database_instance_id   :integer
#  due_date               :date
#  description            :text
#  assigned_to_id         :integer
#  assigned_by_id         :integer
#  prior_communication_id :integer
#  completed              :boolean
#  completed_date         :date
#  completed_by_id        :integer
#  completion_notes       :text
#  created_at             :datetime
#  updated_at             :datetime
#

class Heal::FollowupTask < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :assigned_to, class_name: 'User'
  belongs_to :assigned_by, class_name: 'User'
  belongs_to :completed_by, class_name: 'User'
  belongs_to :prior_communication, class_name: 'Heal::Communication'

  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :cities

  validates :database_instance, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :assigned_to, presence: true
  validates :assigned_by, presence: true

  SEND_FOLLOWUP_TO_ASSIGNEE_ONLY = {text: "Person assigned to", value: "1"}
  SEND_FOLLOWUP_TO_ASSIGNEE_CC_ASSIGNER = {text: "Person assigned to, cc me",value: "2"}


end
