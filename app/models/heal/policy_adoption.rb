# == Schema Information
#
# Table name: policy_adoptions
#
#  id                        :integer          not null, primary key
#  database_instance_id      :integer
#  date                      :date
#  city_id                   :integer
#  prior_to_joining_campaign :boolean
#  notes                     :text
#  created_at                :datetime
#  updated_at                :datetime
#

class Heal::PolicyAdoption < ActiveRecord::Base
end
