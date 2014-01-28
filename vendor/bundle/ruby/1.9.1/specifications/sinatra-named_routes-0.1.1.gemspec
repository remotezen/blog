# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-named_routes"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Federico Romero"]
  s.date = "2013-05-19"
  s.description = "Sinatra extension that allows you to use name your routes"
  s.email = ["federomero@gmail.com"]
  s.homepage = "https://github.com/federomero/sinatra-named_routes"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Sinatra named routes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<tree>, [">= 0"])
      s.add_development_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["= 3.2.0"])
    else
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<tree>, [">= 0"])
      s.add_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, ["= 3.2.0"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<tree>, [">= 0"])
    s.add_dependency(%q<sinatra-contrib>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, ["= 3.2.0"])
  end
end
