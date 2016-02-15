require 'test_helper'

class Heal::CityTest < ActiveSupport::TestCase

  should validate_presence_of :database_instance
  should validate_presence_of :name
  should validate_presence_of :state
  should validate_presence_of :jurisdiction_type

end