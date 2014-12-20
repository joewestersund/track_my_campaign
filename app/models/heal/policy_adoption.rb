# == Schema Information
#
# Table name: policy_adoptions
#
#  id                        :integer          not null, primary key
#  database_instance_id      :integer
#  date                      :date
#  city_id                   :integer
#  prior_to_joining_campaign :boolean
#  notes                     :text
#  created_at                :datetime
#  updated_at                :datetime
#

class Heal::PolicyAdoption < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :city
  has_and_belongs_to_many :policies

  validates :database_instance, presence: true
  validates :city, presence: true

  def policy_summary
    policy_names = []
    self.policies.order(:order_in_list).each do |p|
      policy_names << p.name
    end
    summary = "#{(self.date.to_s + ' ') if self.date.present?}#{policy_names.join(', ')}"
  end

  def create_update_description
    if created_at == updated_at
      {type: :policy_adoption, description: "Policy adoption #{policy_summary} was created", date: created_at, obj:self}
    else
      {type: :policy_adoption, description: "Policy adoption #{policy_summary} was updated", date: updated_at, obj:self}
    end
  end

end
