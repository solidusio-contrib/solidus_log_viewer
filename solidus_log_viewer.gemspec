# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_log_viewer/version'

Gem::Specification.new do |s|
  s.name = 'solidus_log_viewer'
  s.version = SolidusLogViewer::VERSION
  s.summary = 'View log entries in admin'
  s.description = 'Adds the ability to view payment logs in the admin'
  s.license = 'BSD-3-Clause'

  s.author = 'Joshua Nussbaum'
  s.email = 'josh@godynamo.com'
  s.homepage = 'https://github.com/solidusio-contrib/solidus_log_viewer'

  if s.respond_to?(:metadata)
    s.metadata["homepage_uri"] = s.homepage if s.homepage
    s.metadata["source_code_uri"] = s.homepage if s.homepage
    # s.metadata["changelog_uri"] = 'TODO'
  end

  s.required_ruby_version = '~> 2.4'
  s.platform = Gem::Platform::RUBY

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files = Dir['spec/**/*']
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'deface'
  s.add_dependency 'solidus_backend', ['>= 2.0', '< 4']
  s.add_dependency 'solidus_core', ['>= 2.0.0', '< 4']
  s.add_dependency 'solidus_support', '~> 0.8'

  s.add_development_dependency 'solidus_dev_support'
end
