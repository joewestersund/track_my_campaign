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
  validates :date, :uniqueness => {:scope => [:database_instance, :city], message: "This city already has a city designation for this date (or with a blank date)."}
  # date not required.
  # notes not required.

  def create_update_description
    if created_at == updated_at
      {type: :city_designation_achievement, description: "City #{city.name} achieved designation #{city_designation.name} on #{date}", date: created_at, obj:self}
    else
      {type: :city_designation_achievement, description: "City designation achievement #{city_designation.name} for city #{city.name} was updated", date: updated_at, obj:self}
    end
  end

end
