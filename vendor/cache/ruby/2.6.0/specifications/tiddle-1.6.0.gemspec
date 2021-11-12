# -*- encoding: utf-8 -*-
# stub: tiddle 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tiddle".freeze
  s.version = "1.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam Niedzielski".freeze]
  s.date = "2021-04-12"
  s.email = ["adamsunday@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Token authentication for Devise which supports multiple tokens per model".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>.freeze, [">= 4.0.0.rc1", "< 5"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5.2.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner-active_record>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner-mongoid>.freeze, [">= 0"])
    else
      s.add_dependency(%q<devise>.freeze, [">= 4.0.0.rc1", "< 5"])
      s.add_dependency(%q<activerecord>.freeze, [">= 5.2.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner-active_record>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner-mongoid>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>.freeze, [">= 4.0.0.rc1", "< 5"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5.2.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner-active_record>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner-mongoid>.freeze, [">= 0"])
  end
end
