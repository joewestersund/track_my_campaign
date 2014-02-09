# == Schema Information
#
# Table name: communications
#
#  id                    :integer          not null, primary key
#  database_instance_id  :integer
#  date                  :date
#  duration_minutes      :integer
#  communication_type_id :integer
#  event_name            :string(255)
#  interest_level_id     :integer
#  notes                 :text
#  created_at            :datetime
#  updated_at            :datetime
#

class Communication < ActiveRecord::Base
  belongs_to :database_instance
  has_one :communication_type
  has_one :interest_level

  validates :date, presence: true
  validates :duration_minutes, presence: true
  validates :state, presence: true
  validates :jurisdiction_type_id, presence: true

end
