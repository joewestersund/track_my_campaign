# == Schema Information
#
# Table name: honorifics
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Honorific < ActiveRecord::Base
end
