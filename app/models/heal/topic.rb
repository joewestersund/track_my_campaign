# == Schema Information
#
# Table name: topics
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Heal::Topic < ActiveRecord::Base
  belongs_to :database_instance
  has_and_belongs_to_many :communications

  validates :database_instance, presence: true
  validates :name, presence: true, :uniqueness => {:scope => :database_instance}
  validates :order_in_list, presence: true, :uniqueness => {:scope => :database_instance}

  def create_update_description
    if created_at == updated_at
      {type: :topic, description: "Topic #{name} was created", date: created_at, obj:self}
    else
      {type: :topic, description: "Topic #{name} was updated", date: updated_at, obj:self}
    end
  end

end
