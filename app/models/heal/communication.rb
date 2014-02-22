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
#  others_involved       :string(255)
#

class Heal::Communication < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :communication_type
  belongs_to :interest_level
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :staff_involved, class_name: 'User', join_table: 'communications_staff_involved'

  validates :database_instance, presence: true
  validates :date, presence: true
  validates :duration_minutes, presence: true
  validates :communication_type, presence: true
  validates :interest_level, presence: true

  def summary
    str_array = []
    str_array << "#{self.event_name} " if self.event_name.present?
    str_array << "#{show_users_list(self.contacts.all,4)}" if self.contacts.all.count > 0
    str_array.join(", ")
  end
end
