# -*- encoding: utf-8 -*-
# stub: activestorage-aliyun 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "activestorage-aliyun".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Lee".freeze]
  s.date = "2018-02-01"
  s.description = "Wraps the Aliyun OSS as an Active Storage service.".freeze
  s.email = "huacnlee@gmail.com".freeze
  s.homepage = "https://github.com/huacnlee/activestorage-aliyun".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Wraps the Aliyun OSS as an Active Storage service".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 6.0.0"])
      s.add_runtime_dependency(%q<aliyun-sdk>.freeze, [">= 0.6.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 6.0.0"])
      s.add_dependency(%q<aliyun-sdk>.freeze, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 6.0.0"])
    s.add_dependency(%q<aliyun-sdk>.freeze, [">= 0.6.0"])
  end
end
