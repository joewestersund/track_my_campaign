# == Schema Information
#
# Table name: jurisdiction_types
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::JurisdictionType < ActiveRecord::Base
  belongs_to :database_instance
  has_many :cities, dependent: :restrict_with_exception

  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def create_update_description
    if created_at == updated_at
      {type: :jurisdiction_type, description: "Jurisdiction type #{name} was created", date: created_at}
    else
      {type: :jurisdiction_type, description: "Jurisdiction type #{name} was updated", date: updated_at}
    end
  end
end
