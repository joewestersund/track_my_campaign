# == Schema Information
#
# Table name: milestones
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  milestone_type_id    :integer
#  city_id              :integer
#  status_type_id       :integer
#  completion_date      :date
#  notes                :text
#  assigned_to_id       :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::Milestone < ActiveRecord::Base
  belongs_to :database_instance
  belongs_to :milestone_type
  belongs_to :city
  belongs_to :status_type
  belongs_to :assigned_to, class_name: 'User'

  validates :database_instance, presence: true
  validates :milestone_type, presence: true
  validates :city, presence: true
  validates :status_type, presence: true

  def create_update_description
    if created_at == updated_at
      {type: :milestone, description: "Milestone #{milestone_type.name} for city #{city.name} was created", date: created_at, obj:self}
    else
      {type: :milestone, description: "Milestone #{milestone_type.name} for city #{city.name} was updated", date: updated_at, obj:self}
    end
  end

end
