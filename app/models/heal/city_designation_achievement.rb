# == Schema Information
#
# Table name: city_designation_achievements
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  date                 :date
#  city_id              :integer
#  city_designation_id  :integer
#  notes                :text
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::CityDesignationAchievement < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :city
  belongs_to :city_designation

  validates :database_instance, presence: true
  validates :city, presence: true
  validates :city_designation, presence: true, :uniqueness => {:scope => [:database_instance, :city], message: "This city already has a record for this city designation."}
  # date not required.
  # notes not required.

end
