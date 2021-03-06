# == Schema Information
#
# Table name: city_designations
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::CityDesignation < ActiveRecord::Base
  belongs_to :database_instance
  #has_many :cities, dependent: :restrict_with_exception #delete once cities don't have their own

  has_many :city_designation_achievements, dependent: :restrict_with_exception

  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def create_update_description
    if created_at == updated_at
      {type: :city_designation, description: "City designation #{name} was created", date: created_at, obj:self}
    else
      {type: :city_designation, description: "City designation #{name} was updated", date: updated_at, obj:self}
    end
  end

end
