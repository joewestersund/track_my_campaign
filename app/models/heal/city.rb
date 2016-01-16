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

  def name_and_state
    "#{self.name}, #{self.state}"
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


  def self.csv_header
    ["ID", "Name", "State",
     "County", "Jurisdiction Type", "League Division",
     "Population", "In KP Service Area", "Under-Resourced or Disease Burdened Area",
     "State Median Income", "City Median Income",
     "Minorities > 15%", "% White alone", '% Not "White Alone"',
     "% African American alone", "% American Indian and Alaska Native alone",
     "% Asian alone", "% Native Hawaiian and Other Pacific Islander alone",
     "% Some Other Race alone", "% Two or More Races",
     "HEAL City Designation", "Policy Change in Progress"]
  end

  def to_csv_row
    av_helpers = ActionController::Base.helpers
    app_helpers = ApplicationController.helpers

    [self.id, self.name, self.state, self.county,
     (self.jurisdiction_type.name if self.jurisdiction_type.present?),
     (self.league_division.name if self.league_division.present?),
     av_helpers.number_with_delimiter(self.population),
     app_helpers.show_boolean(self.kp_service_area),
     app_helpers.show_boolean(self.under_resourced_or_disease_burden),
     av_helpers.number_to_currency(self.state_median_income, precision: 0),
     av_helpers.number_to_currency(self.city_median_income, precision: 0),
     app_helpers.show_boolean(self.minorities_more_than_fifteen_percent),
     av_helpers.number_to_percentage(self.percent_white_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_not_white_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_african_american_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_native_american_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_asian_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_pacific_islander_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_other_race_alone, precision:2),
     av_helpers.number_to_percentage(self.percent_two_or_more_races, precision:2),
     app_helpers.show_city_designation_achievements_list(self, {no_html: true}),
     app_helpers.show_boolean(self.policy_change_in_progress)]
  end

end
