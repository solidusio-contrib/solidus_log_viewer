# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
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

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'deface'
  s.add_dependency 'solidus_backend', ['>= 2.0', '< 3']

  s.add_development_dependency 'solidus_extension_dev_tools'
end
