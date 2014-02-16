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
  belongs_to :database_instance
  belongs_to :city
  has_and_belongs_to_many :policies

  validates :database_instance, presence: true
  validates :city, presence: true
  validates :date, presence: true

end
