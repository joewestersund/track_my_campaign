# == Schema Information
#
# Table name: heal_city_designations
#
#  id                   :integer          not null, primary key
#  database_instance_id :integer
#  name                 :string(255)
#  order_in_list        :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class HealCityDesignation < ActiveRecord::Base
end
