# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-mapping"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hallison Batista"]
  s.date = "2009-09-22"
  s.description = "Sinatra mapping extension is a minimal module that is useful for create map names for Sinatra web application."
  s.email = "email@hallisonbatista.com"
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "LICENSE"]
  s.homepage = "http://sinatra-mapping.rubyforge.org/"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Sinatra - Mapping", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "sinatra-mapping"
  s.rubygems_version = "1.8.23"
  s.summary = "Sinatra mapping extension for web application."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.1.1"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.1.1"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.1.1"])
  end
end
