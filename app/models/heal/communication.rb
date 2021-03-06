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
  include HealHelper
  include UsersHelper

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
    summary = ""
    if self.event_name.present?
      summary = "#{self.event_name}"
    elsif self.communication_type.present?
      summary = "#{self.communication_type.name}"
    end

    if self.contacts.count > 0
      summary = summary + " with #{show_contacts_list(self.contacts)}"
    end

    summary = "#{summary} #{self.date}"
  end

  def summary_date_first
    summary = ""
    if self.event_name.present?
      summary = "#{self.event_name}"
    elsif self.communication_type.present?
      summary = "#{self.communication_type.name}"
    end

    if self.contacts.count > 0
      summary = summary + " with #{show_contacts_list(self.contacts)}"
    end

    summary = "#{self.date} #{summary}"
  end

  def summary_for_contact(contact)
    summary = ""
    if self.event_name.present?
      summary = "#{self.event_name}"
    elsif self.communication_type.present?
      summary = "#{self.communication_type.name}"
    end

    if self.contacts.count > 1
      summary = summary + " with #{show_contacts_list(self.contacts.where("id <> #{contact.id}"))}"
    end

    summary = summary + " (#{show_users_list(self.staff_involved.all)})" if self.staff_involved.count > 0

    summary = "#{summary} #{self.date}"
  end

  def create_update_description
    if created_at == updated_at
      {type: :communication, description: "Communication was created: #{summary}", date: created_at, obj:self}
    else
      {type: :communication, description: "Communication was updated: #{summary}", date: updated_at, obj:self}
    end
  end

  def self.header_row
    ["ID", "Date", "Duration (minutes)",
     "Communication Type", "Event Name",
     "Topics", "Interest Level",
     "Cities Involved", "Contacts Involved",
     "Others Involved", "Staff Involved", "Notes"]
  end

  def to_row
    [self.id,
     self.date.strftime("%m/%d/%Y"),
     self.duration_minutes,
     get_name(self.communication_type),
     self.event_name,
     show_comma_separated_list(self.topics.all, "topics"),
     get_name(self.interest_level),
     show_cities_list(self.cities,{show_state: true, show_all: true}),
     show_contacts_list(self.contacts,{show_all: true}),
     self.others_involved,
     show_users_list(self.staff_involved.all),
     self.notes]
  end

end
