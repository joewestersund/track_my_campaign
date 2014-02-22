# == Schema Information
#
# Table name: database_instances
#
#  id            :integer          not null, primary key
#  created_at    :datetime
#  updated_at    :datetime
#  type          :string(255)
#  instance_name :string(255)
#

class Heal::DatabaseInstance < DatabaseInstance
  has_many :cities
  has_many :city_designations
  has_many :communications
  has_many :communication_types
  has_many :contacts
  has_many :followup_tasks
  has_many :honorifics
  has_many :interest_levels
  has_many :jurisdiction_types
  has_many :league_divisions
  has_many :milestone_types
  has_many :milestones
  has_many :organization_types
  has_many :policies
  has_many :policy_adoptions
  has_many :position_types
  has_many :resolutions
  has_many :status_types
  has_many :topics

  def name
    "Heal Cities - #{self.instance_name}"
  end
end
