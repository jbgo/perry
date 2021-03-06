# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{perry}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Travis Petticrew"]
  s.date = %q{2011-04-14}
  s.email = %q{bobo@petticrew.net}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "lib/perry", "lib/perry/adapters", "lib/perry/adapters/abstract_adapter.rb", "lib/perry/adapters/bertrpc_adapter.rb", "lib/perry/adapters/restful_http_adapter.rb", "lib/perry/adapters.rb", "lib/perry/association.rb", "lib/perry/association_preload.rb", "lib/perry/associations", "lib/perry/associations/common.rb", "lib/perry/associations/contains.rb", "lib/perry/associations/external.rb", "lib/perry/base.rb", "lib/perry/cacheable", "lib/perry/cacheable/entry.rb", "lib/perry/cacheable/store.rb", "lib/perry/cacheable.rb", "lib/perry/core_ext", "lib/perry/core_ext/kernel", "lib/perry/core_ext/kernel/singleton_class.rb", "lib/perry/errors.rb", "lib/perry/logger.rb", "lib/perry/persistence.rb", "lib/perry/relation", "lib/perry/relation/finder_methods.rb", "lib/perry/relation/query_methods.rb", "lib/perry/relation.rb", "lib/perry/scopes", "lib/perry/scopes/conditions.rb", "lib/perry/scopes.rb", "lib/perry/serialization.rb", "lib/perry/version.rb", "lib/perry.rb"]
  s.homepage = %q{http://github.com/tpett/perry}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Ruby library for querying and mapping data through generic interfaces}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 2.10.0"])
      s.add_development_dependency(%q<leftright>, [">= 0.0.6"])
      s.add_development_dependency(%q<fakeweb>, [">= 1.3.0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<bertrpc>, [">= 1.3.0"])
    else
      s.add_dependency(%q<shoulda>, [">= 2.10.0"])
      s.add_dependency(%q<leftright>, [">= 0.0.6"])
      s.add_dependency(%q<fakeweb>, [">= 1.3.0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_dependency(%q<bertrpc>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 2.10.0"])
    s.add_dependency(%q<leftright>, [">= 0.0.6"])
    s.add_dependency(%q<fakeweb>, [">= 1.3.0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 2.3.0"])
    s.add_dependency(%q<bertrpc>, [">= 1.3.0"])
  end
end
