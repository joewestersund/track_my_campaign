require 'test_helper'

class Heal::CommunicationTest < ActiveSupport::TestCase

  should validate_presence_of :database_instance
  should validate_presence_of :date
  should validate_presence_of :duration_minutes
  should validate_presence_of :communication_type
  should validate_presence_of :interest_level

end