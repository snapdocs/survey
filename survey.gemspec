# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "survey/version"

Gem::Specification.new do |s|
  s.name        = "survey"
  s.version     = Survey::VERSION
  s.summary     = %Q{Survey is a user oriented tool that brings surveys into Rails applications.}
  s.description = %Q{A rails gem to enable surveys in your application as easy as possible}
  s.files       = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.authors     = %Q{Runtime Revolution}
  s.require_paths = %w(lib)

  s.add_dependency("railties", ">= 7.0", "< 8.0")
  s.add_development_dependency("activerecord", ">= 7.0", "< 8.0")
  s.add_development_dependency("sqlite3")
  s.add_development_dependency("mocha")
  s.add_development_dependency("faker")
  s.add_development_dependency("rake")
end
