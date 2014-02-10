# == Schema Information
#
# Table name: database_instances
#
#  id               :integer          not null, primary key
#  organization_id  :integer
#  database_type_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class DatabaseInstance < ActiveRecord::Base
  belongs_to :organization
  belongs_to :database_type
  has_many :cities
  has_many :communications
  has_many :communication_types
  has_many :contacts
  has_many :heal_city_designations
  has_many :honorifics
  has_many :interest_levels
  has_many :jurisdiction_types
  has_many :organizations
  has_many :position_types
  has_many :topics

  validates :organization_id, presence: true
  validates :database_type_id, presence: true

  def name
    "#{self.database_type.name} - #{self.organization.name}"
  end

end
