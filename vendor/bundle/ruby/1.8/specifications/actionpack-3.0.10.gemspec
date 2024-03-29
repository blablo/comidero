# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{actionpack}
  s.version = "3.0.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{David Heinemeier Hansson}]
  s.date = %q{2011-08-16}
  s.description = %q{Web apps on Rails. Simple, battle-tested conventions for building and testing MVC web applications. Works with any Rack-compatible server.}
  s.email = %q{david@loudthinking.com}
  s.homepage = %q{http://www.rubyonrails.org}
  s.require_paths = [%q{lib}]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = [%q{none}]
  s.rubyforge_project = %q{actionpack}
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Web-flow and rendering framework putting the VC in MVC (part of Rails).}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 3.0.10"])
      s.add_runtime_dependency(%q<activemodel>, ["= 3.0.10"])
      s.add_runtime_dependency(%q<builder>, ["~> 2.1.2"])
      s.add_runtime_dependency(%q<i18n>, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<rack>, ["~> 1.2.1"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.5.7"])
      s.add_runtime_dependency(%q<rack-mount>, ["~> 0.6.14"])
      s.add_runtime_dependency(%q<tzinfo>, ["~> 0.3.23"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.6.6"])
    else
      s.add_dependency(%q<activesupport>, ["= 3.0.10"])
      s.add_dependency(%q<activemodel>, ["= 3.0.10"])
      s.add_dependency(%q<builder>, ["~> 2.1.2"])
      s.add_dependency(%q<i18n>, ["~> 0.5.0"])
      s.add_dependency(%q<rack>, ["~> 1.2.1"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.7"])
      s.add_dependency(%q<rack-mount>, ["~> 0.6.14"])
      s.add_dependency(%q<tzinfo>, ["~> 0.3.23"])
      s.add_dependency(%q<erubis>, ["~> 2.6.6"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 3.0.10"])
    s.add_dependency(%q<activemodel>, ["= 3.0.10"])
    s.add_dependency(%q<builder>, ["~> 2.1.2"])
    s.add_dependency(%q<i18n>, ["~> 0.5.0"])
    s.add_dependency(%q<rack>, ["~> 1.2.1"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.7"])
    s.add_dependency(%q<rack-mount>, ["~> 0.6.14"])
    s.add_dependency(%q<tzinfo>, ["~> 0.3.23"])
    s.add_dependency(%q<erubis>, ["~> 2.6.6"])
  end
end
