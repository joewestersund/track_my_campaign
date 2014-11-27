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
  has_many :cities, dependent: :destroy
  has_many :city_designation_achievements, dependent: :destroy
  has_many :city_designations, dependent: :destroy
  has_many :communications, dependent: :destroy
  has_many :communication_types, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :followup_tasks, dependent: :destroy
  has_many :honorifics, dependent: :destroy
  has_many :interest_levels, dependent: :destroy
  has_many :jurisdiction_types, dependent: :destroy
  has_many :league_divisions, dependent: :destroy
  has_many :milestone_types, dependent: :destroy
  has_many :milestones, dependent: :destroy
  has_many :organization_types, dependent: :destroy
  has_many :policies, dependent: :destroy
  has_many :policy_adoptions, dependent: :destroy
  has_many :position_types, dependent: :destroy
  has_many :resolutions, dependent: :destroy
  has_many :status_types, dependent: :destroy
  has_many :topics, dependent: :destroy

  def name
    "Heal Cities - #{self.instance_name}"
  end
end
