# == Schema Information
#
# Table name: organization_types
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::OrganizationType < ActiveRecord::Base
  belongs_to :database_instance
  has_many :contacts, dependent: :restrict_with_exception

  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def create_update_description
    if created_at == updated_at
      {type: :organization_type, description: "Organization type #{name} was created", date: created_at, obj:self}
    else
      {type: :organization_type, description: "Organization type #{name} was updated", date: updated_at, obj:self}
    end
  end

end
