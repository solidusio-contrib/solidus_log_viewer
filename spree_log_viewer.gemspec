Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_log_viewer'
  s.version     = '0.50.0'
  s.summary     = 'View log entries in admin'
  s.description = 'Adds the ability to view payment logs in the admin'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Joshua Nussbaum'
  s.email             = 'josh@godynamo.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.50.0')
end
