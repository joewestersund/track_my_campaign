# == Schema Information
#
# Table name: cities
#
#  id                                :integer          not null, primary key
#  database_instance_id              :integer
#  name                              :string(255)
#  county                            :string(255)
#  state                             :string(255)
#  jurisdiction_type_id              :integer
#  league_division_id                :integer
#  population                        :integer
#  kp_service_area                   :boolean
#  under_resourced_or_disease_burden :boolean
#  state_median_income               :decimal(, )
#  city_median_income                :decimal(, )
#  HEAL_city_designation_id          :integer
#  created_at                        :datetime
#  updated_at                        :datetime
#

class Heal::City < ActiveRecord::Base
  belongs_to :database_instance, class_name: "TrackMyCampaign::DatabaseInstance"
  has_one :jurisdiction_type
  #has_one :league_division
  has_one :heal_city_designation
  has_and_belongs_to_many :communications

  validates :name, presence: true
  validates :state, presence: true
  validates :jurisdiction_type_id, presence: true

end
