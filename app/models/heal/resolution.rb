# == Schema Information
#
# Table name: resolutions
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

class Heal::Resolution < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :city
  has_and_belongs_to_many :policies

  validates :database_instance, presence: true
  validates :city, presence: true
  #validates :date, presence: true  #make date no longer required, to allow data upload from ccpha policy grid

  def policy_summary
    policy_names = []
    self.policies.order(:order_in_list).each do |p|
      policy_names << p.full_name
    end
    summary = "#{(self.date.to_s + ' ') if self.date.present?}#{policy_names.join(', ')}"
  end

  def create_update_description
    if created_at == updated_at
      {type: :resolution, description: "Resolution #{policy_summary} was created", date: created_at, obj:self}
    else
      {type: :resolution, description: "Resolution #{policy_summary} was updated", date: updated_at, obj:self}
    end
  end

end
