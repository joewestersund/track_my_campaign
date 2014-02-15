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
end
