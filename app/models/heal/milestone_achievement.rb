# == Schema Information
#
# Table name: milestone_achievements
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  milestone_id         :integer
#  city_id              :integer
#  status_type_id       :integer
#  completion_date      :date
#  notes                :text
#  user_id              :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::MilestoneAchievement < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :milestone
  belongs_to :city
  belongs_to :status_type
  belongs_to :user

  validates :database_instance, presence: true
  validates :milestone, presence: true
  validates :city, presence: true
  validates :status_type, presence: true

end
