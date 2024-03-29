# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{aws-sdk}
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Amazon Web Services}]
  s.date = %q{2012-04-19}
  s.description = %q{AWS SDK for Ruby}
  s.homepage = %q{http://aws.amazon.com/sdkforruby}
  s.licenses = [%q{Apache 2.0}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{AWS SDK for Ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<uuidtools>, ["~> 2.1"])
      s.add_runtime_dependency(%q<httparty>, ["~> 0.7"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_runtime_dependency(%q<json>, ["~> 1.4"])
    else
      s.add_dependency(%q<uuidtools>, ["~> 2.1"])
      s.add_dependency(%q<httparty>, ["~> 0.7"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
      s.add_dependency(%q<json>, ["~> 1.4"])
    end
  else
    s.add_dependency(%q<uuidtools>, ["~> 2.1"])
    s.add_dependency(%q<httparty>, ["~> 0.7"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.4"])
    s.add_dependency(%q<json>, ["~> 1.4"])
  end
end
