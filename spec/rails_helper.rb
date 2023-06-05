require "support/factory_bot"
require "spec_helper"
require "factory_bot_rails"

# FactoryBot.definition_file_paths << File.join(File.dirname(__FILE__), 'factories')
# FactoryBot.find_definitions

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment",__FILE__)
require 'rspec/rails'
require "capybara/rspec"
include Capybara::DSL

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end