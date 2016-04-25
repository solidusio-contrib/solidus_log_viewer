require 'capybara/rspec'
require 'capybara/rails'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :requests
end
