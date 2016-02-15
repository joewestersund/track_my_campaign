require 'test_helper'

class Heal::ContactTest < ActiveSupport::TestCase

  should validate_presence_of :database_instance
  should validate_presence_of :first_name
  should validate_presence_of :last_name

end