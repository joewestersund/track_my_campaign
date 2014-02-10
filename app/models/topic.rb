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

class Topic < ActiveRecord::Base
  has_and_belongs_to_many :communications
end
