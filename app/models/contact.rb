# == Schema Information
#
# Table name: contacts
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  first_name           :string(255)
#  last_name            :string(255)
#  title                :string(255)
#  city_id              :integer
#  organization_name    :string(255)
#  phone_number         :string(255)
#  email                :string(255)
#  address_line_1       :string(255)
#  address_line_2       :string(255)
#  address_city         :string(255)
#  address_state        :string(255)
#  address_zip          :string(255)
#  interest_level_id    :integer
#  HEAL_champion        :boolean
#  HEAL_champion_notes  :text
#  position_type_id     :integer
#  notes                :text
#  created_at           :datetime
#  updated_at           :datetime
#  honorific_id         :integer
#

class Contact < ActiveRecord::Base

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
