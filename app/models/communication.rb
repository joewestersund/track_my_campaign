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

class Communication < ActiveRecord::Base
end
