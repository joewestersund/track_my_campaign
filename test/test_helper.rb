ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'shoulda/matchers'

# Improved Minitest output (color and progress bar)
require "minitest/reporters"
#Minitest::Reporters.use!(
#    Minitest::Reporters::ProgressReporter.new,
#    ENV,
#    Minitest.backtrace_filter)

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress

# Capybara and poltergeist integration
require "capybara/rails"
require "capybara/poltergeist"
Capybara.javascript_driver = :poltergeist

class ActiveSupport::TestCase
  #need to specify name because these are in a module
  set_fixture_class :cities => "Heal::City"
  set_fixture_class :communications => "Heal::Communication"
  set_fixture_class :contacts => "Heal::Contact"

  fixtures :all
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
end

# See: https://gist.github.com/mperham/3049152
class ActiveRecord::Base
  mattr_accessor :shared_connection
  @@shared_connection = nil

  def self.connection
    @@shared_connection || ConnectionPool::Wrapper.new(:size => 1) { retrieve_connection }
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection

