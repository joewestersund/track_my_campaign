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
#  photo_file_name      :string(255)
#  photo_content_type   :string(255)
#  photo_file_size      :integer
#  photo_updated_at     :datetime
#

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
