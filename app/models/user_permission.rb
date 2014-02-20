# == Schema Information
#
# Table name: user_permissions
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  user_id              :integer
#  read_only            :boolean
#  created_at           :datetime
#  updated_at           :datetime
#

class UserPermission < ActiveRecord::Base
  belongs_to :user
  belongs_to :database_instance

  validates :user, presence: true
  validates :database_instance, presence: true, :uniqueness => {:scope => :user}

end
