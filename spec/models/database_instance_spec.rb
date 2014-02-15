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

require 'spec_helper'

describe DatabaseInstance do
  pending "add some examples to (or delete) #{__FILE__}"
end
