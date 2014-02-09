# == Schema Information
#
# Table name: cities
#
#  id                                :integer          not null, primary key
#  database_instance_id              :integer
#  name                              :string(255)
#  county                            :string(255)
#  state                             :string(255)
#  jurisdiction_type_id              :integer
#  league_division_id                :integer
#  population                        :integer
#  kp_service_area                   :boolean
#  under_resourced_or_disease_burden :boolean
#  state_median_income               :decimal(, )
#  city_median_income                :decimal(, )
#  HEAL_city_designation_id          :integer
#  created_at                        :datetime
#  updated_at                        :datetime
#

require 'spec_helper'

describe City do
  pending "add some examples to (or delete) #{__FILE__}"
end
