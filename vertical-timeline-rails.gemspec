# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vertical-timeline-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "vertical-timeline-rails"
  spec.version       = Vertical::Timeline::Rails::VERSION
  spec.authors       = ["rhannequin"]
  spec.email         = ["hello@rhannequ.in"]

  spec.summary       = %q{Vertical Timeline for Rails >= 3.1}
  spec.description   = %q{A wrapper for Vertical Timeline in the Rails asset pipeline}
  spec.homepage      = "https://github.com/rhannequin/vertical-timeline-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
