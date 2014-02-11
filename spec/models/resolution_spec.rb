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

require 'spec_helper'

describe Resolution do
  pending "add some examples to (or delete) #{__FILE__}"
end
