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

class DatabaseInstance < ActiveRecord::Base
  belongs_to :organization

  validates :organization_id, presence: true
  validates :type, presence: true

  def name
    "#{self.type} - #{self.organization.name}"
  end

end
