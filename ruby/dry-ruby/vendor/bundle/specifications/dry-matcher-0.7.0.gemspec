# -*- encoding: utf-8 -*-
# stub: dry-matcher 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dry-matcher".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Riley".freeze]
  s.date = "2018-01-10"
  s.description = "Flexible, expressive pattern matching for Ruby".freeze
  s.email = ["tim@icelab.com.au".freeze]
  s.homepage = "http://dry-rb.org/gems/dry-matcher".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Flexible, expressive pattern matching for Ruby".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.4.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.4.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.4.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.10.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
