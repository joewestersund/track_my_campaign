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

class DatabaseInstance < ActiveRecord::Base
  has_many :user_permissions
  has_many :users, through: :user_permissions

  validates :type, presence: true
  validates :instance_name, presence: true, uniqueness: {scope: :type}

  def name
    "#{self.type} - #{self.instance_name}"
  end

end
