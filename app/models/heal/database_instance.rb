# == Schema Information
#
# Table name: database_instances
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  type            :string(255)
#

class Heal::DatabaseInstance < DatabaseInstance
  has_many :cities
  has_many :city_designations
  has_many :communications
  has_many :communication_types
  has_many :contacts
  has_many :honorifics
  has_many :interest_levels
  has_many :jurisdiction_types
  has_many :league_divisions
  has_many :milestones
  has_many :milestone_achievements
  has_many :policies
  has_many :policy_adoptions
  has_many :position_types
  has_many :resolutions
  has_many :status_types
  has_many :topics

  def name
    "Heal Cities - #{self.organization.name}"
  end
end
