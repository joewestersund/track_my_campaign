# == Schema Information
#
# Table name: database_instances
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  type       :string(255)
#  name       :string(255)
#

class DatabaseInstance < ActiveRecord::Base
  has_many :user_permissions
  has_many :users, through: :user_permissions

  validates :type, presence: true
  validates :name, presence: true
  validates :type_and_name, uniqueness: true


  def type_and_name
    if self.organization.present?
      "#{self.type} - #{self.organization.name}"
    else
      "#{self.type} - #{self.users.map}"
    end
  end

end
