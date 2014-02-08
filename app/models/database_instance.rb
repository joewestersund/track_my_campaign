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

  validates :organization_id, presence: true
  validates :database_type_id, presence: true

end
