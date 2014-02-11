# == Schema Information
#
# Table name: database_types
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  internal_name :string(255)
#

class DatabaseType < ActiveRecord::Base
  validates :name, presence: true

end
