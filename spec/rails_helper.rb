ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "rspec/rails"
require 'capybara/poltergeist'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }

module Features
  # Extend this module in spec/support/features/*.rb
  include Formulaic::Dsl
end

RSpec.configure do |config|
  Capybara.default_host = 'localhost'
  Capybara.server_port = 9887
  Capybara.app_host = "http://#{Capybara.default_host}:#{Capybara.server_port}"

  config.include Features, type: :feature
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false
end

ActiveRecord::Migration.maintain_test_schema!
Capybara.javascript_driver = :poltergeist