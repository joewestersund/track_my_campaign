# == Schema Information
#
# Table name: communications
#
#  id                        :integer          not null, primary key
#  database_instance_id      :integer
#  date                      :date
#  duration_minutes          :integer
#  communication_type_id     :integer
#  event_name                :string(255)
#  contact_interest_level_id :integer
#  notes                     :text
#  created_at                :datetime
#  updated_at                :datetime
#

require 'spec_helper'

describe Communication do
  pending "add some examples to (or delete) #{__FILE__}"
end
