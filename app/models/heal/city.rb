# == Schema Information
#
# Table name: cities
#
#  id                                   :integer          not null, primary key
#  database_instance_id                 :integer
#  name                                 :string(255)
#  county                               :string(255)
#  state                                :string(255)
#  jurisdiction_type_id                 :integer
#  league_division_id                   :integer
#  population                           :integer
#  kp_service_area                      :boolean
#  under_resourced_or_disease_burden    :boolean
#  state_median_income                  :decimal(, )
#  city_median_income                   :decimal(, )
#  created_at                           :datetime
#  updated_at                           :datetime
#  policy_change_in_progress            :boolean          default(FALSE)
#  percent_obesity                      :decimal(5, 2)
#  minorities_more_than_fifteen_percent :boolean
#  percent_white_alone                  :decimal(5, 2)
#  percent_not_white_alone              :decimal(5, 2)
#  percent_african_american_alone       :decimal(5, 2)
#  percent_native_american_alone        :decimal(5, 2)
#  percent_asian_alone                  :decimal(5, 2)
#  percent_pacific_islander_alone       :decimal(5, 2)
#  percent_other_race_alone             :decimal(5, 2)
#  percent_two_or_more_races            :decimal(5, 2)
#

class Heal::City < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :jurisdiction_type
  belongs_to :league_division

  has_many :milestones, dependent: :restrict_with_exception
  has_many :policy_adoptions, dependent: :restrict_with_exception
  has_many :resolutions, dependent: :restrict_with_exception
  has_many :city_designation_achievements

  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :communications
  has_and_belongs_to_many :followup_tasks

  validates :database_instance, presence: true
  validates :name, presence: true
  validates :state, presence: true
  validates :jurisdiction_type, presence: true
  #league division not required.      validates :league_division, presence: true

  def name_and_state
    "#{self.name} #{self.state}"
  end

  def name_type_state
    "#{self.name} (#{self.jurisdiction_type.name} in #{self.state})"
  end

  def current_designation
    if self.city_designation_achievements.nil? || self.city_designation_achievements.count == 0
      return nil
    else
      self.city_designations_achievements_in_order.first
    end
  end

  def city_designations_achievements_in_order
    self.city_designation_achievements.joins(:city_designation).order("city_designations.order_in_list desc")
  end

  def create_update_description
    if created_at == updated_at
      {type: :city, description: "City #{name} was created", date: created_at, obj:self}
    else
      {type: :city, description: "City #{name} was updated", date: updated_at, obj:self}
    end
  end

end
