# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mysql2}
  s.version = "0.2.18"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Brian Lopez}]
  s.date = %q{2011-12-06}
  s.email = %q{seniorlopez@gmail.com}
  s.extensions = [%q{ext/mysql2/extconf.rb}]
  s.files = [%q{ext/mysql2/extconf.rb}]
  s.homepage = %q{http://github.com/brianmario/mysql2}
  s.rdoc_options = [%q{--charset=UTF-8}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{A simple, fast Mysql library for Ruby, binding to libmysql}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.7.7"])
      s.add_development_dependency(%q<rake>, ["= 0.8.7"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<mysql>, [">= 0"])
      s.add_development_dependency(%q<do_mysql>, [">= 0"])
      s.add_development_dependency(%q<sequel>, [">= 0"])
      s.add_development_dependency(%q<faker>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.7.7"])
      s.add_dependency(%q<rake>, ["= 0.8.7"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<mysql>, [">= 0"])
      s.add_dependency(%q<do_mysql>, [">= 0"])
      s.add_dependency(%q<sequel>, [">= 0"])
      s.add_dependency(%q<faker>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.7.7"])
    s.add_dependency(%q<rake>, ["= 0.8.7"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<mysql>, [">= 0"])
    s.add_dependency(%q<do_mysql>, [">= 0"])
    s.add_dependency(%q<sequel>, [">= 0"])
    s.add_dependency(%q<faker>, [">= 0"])
  end
end
