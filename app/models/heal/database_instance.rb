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
  has_many :communications
  has_many :communication_types
  has_many :contacts
  has_many :city_designations
  has_many :honorifics
  has_many :interest_levels
  has_many :jurisdiction_types
  has_many :organizations
  has_many :position_types
  has_many :topics

  def name
    "Heal Cities - #{self.organization.name}"
  end
end
