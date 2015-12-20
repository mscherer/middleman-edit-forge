# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-edit-forge/version"

Gem::Specification.new do |s|
  s.name = "middleman-edit-forge"
  s.version = Middleman::Piwik::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Michael Scherer"]
  s.email = ["mscherer@redhat.com"]
  s.homepage = "https://github.com/mscherer/middleman-edit-forge"
  s.summary = %q{Edition on forge (GitHub, Bitbucket, etc) integration for Middleman}
  s.description = %q{Edition on forge (GitHub, Bitbucket, etc) integration for Middleman}
  s.license = "MIT"
  s.files = `git ls-files -z`.split("\0")
  s.test_files = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_paths = ["lib"]
  s.add_runtime_dependency("middleman-core", ["~> 3.2"])
end
