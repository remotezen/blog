# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tree"
  s.version = "0.2.1"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Anupam Sengupta"]
  s.autorequire = "tree"
  s.cert_chain = nil
  s.date = "2005-12-29"
  s.description = "Provides a generic tree data structure with ability to store keyed node elements in the tree. The implementation mixes in the Enumerable module."
  s.email = "anupamsg@gmail.com"
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubygems_version = "1.8.23"
  s.summary = "Ruby implementation of the Tree data structure."

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
