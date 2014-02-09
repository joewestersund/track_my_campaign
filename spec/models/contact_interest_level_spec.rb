# == Schema Information
#
# Table name: contact_interest_levels
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

require 'spec_helper'

describe ContactInterestLevel do
  pending "add some examples to (or delete) #{__FILE__}"
end
