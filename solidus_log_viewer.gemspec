# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'solidus_log_viewer/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_log_viewer'
  s.version     = SolidusLogViewer::VERSION
  s.summary     = 'View log entries in admin'
  s.description = 'Adds the ability to view payment logs in the admin'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Joshua Nussbaum'
  s.email             = 'josh@godynamo.com'
  s.homepage          = 'https://solidus.io'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus_backend', ['>= 1.3', '< 3']
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara', '~> 2.18'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'capybara-screenshot'
end
