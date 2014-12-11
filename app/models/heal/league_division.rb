# == Schema Information
#
# Table name: league_divisions
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::LeagueDivision < ActiveRecord::Base
  belongs_to :database_instance
  has_many :cities, dependent: :restrict_with_exception

  belongs_to :database_instance
  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def create_update_description
    if created_at == updated_at
      {type: :league_division, description: "League division #{name} was created", date: created_at}
    else
      {type: :league_division, description: "League division #{name} was updated", date: updated_at}
    end
  end

end
