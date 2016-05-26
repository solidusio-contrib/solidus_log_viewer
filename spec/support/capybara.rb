require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-screenshot/rspec'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :requests
end
