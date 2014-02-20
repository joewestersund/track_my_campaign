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

require 'spec_helper'

describe UserPermission do
  pending "add some examples to (or delete) #{__FILE__}"
end
