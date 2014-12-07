# == Schema Information
#
# Table name: contacts
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  first_name           :string(255)
#  last_name            :string(255)
#  title                :string(255)
#  organization_name    :string(255)
#  office_phone_number  :string(255)
#  email                :string(255)
#  address_line_1       :string(255)
#  address_line_2       :string(255)
#  address_city         :string(255)
#  address_state        :string(255)
#  address_zip          :string(255)
#  interest_level_id    :integer
#  heal_champion        :boolean
#  heal_champion_notes  :text
#  position_type_id     :integer
#  notes                :text
#  created_at           :datetime
#  updated_at           :datetime
#  honorific_id         :integer
#  photo_file_name      :string(255)
#  photo_content_type   :string(255)
#  photo_file_size      :integer
#  photo_updated_at     :datetime
#  cell_phone_number    :string(255)
#  fax                  :string(255)
#  organization_type_id :integer
#  website              :string(255)
#

class Heal::Contact < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :honorific
  belongs_to :interest_level
  belongs_to :position_type
  belongs_to :organization_type
  has_and_belongs_to_many :communications
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :followup_tasks

  validates :database_instance, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # not required    validates :position_type_id, presence: true
  # not required    validates :interest_level_id, presence: true

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def first_and_last_name
    "#{self.first_name} #{self.last_name}"
  end

  def first_last_organization_name
    "#{self.first_name} #{self.last_name} (#{self.organization_name})"
  end

  def first_last_city_names
    cities = self.cities.map{ |city| city.name_and_state}.join(", ")
    text = "#{self.first_name} #{self.last_name}"
    text += " (#{cities})" unless cities.blank?
    text
  end

  def email_address_with_name
    "#{self.first_name} #{self.last_name} <#{self.email}>"
  end

  def website_with_prefix
    return nil if self.website.nil?
    http_prefix = 'http://'
    if self.website.start_with?(http_prefix)
      return self.website
    else
      return "#{http_prefix}#{self.website}"
    end
  end

  def self.import(file)
    #import contacts from Excel
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      contact = Heal::Contact.new
      contact.database_instance = current_db
      contact.attributes = row.to_hash.slice(*accessible_attributes)
      contact.save!
    end
  end

  def self.open_spreadsheet(file)
    #import contacts from Excel
    case File.extname(file.original_filename)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end

end
