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
end
