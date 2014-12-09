# == Schema Information
#
# Table name: policies
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#  category             :string(255)
#  subcategory          :string(255)
#

class Heal::Policy < ActiveRecord::Base
  belongs_to :database_instance
  has_and_belongs_to_many :policy_adoptions

  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def full_name
    str = ""
    str = "#{category} | " if category.present?
    str += " #{subcategory} | " if subcategory.present?
    str += name
  end

end
