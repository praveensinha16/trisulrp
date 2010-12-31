# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{trisulrp}
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["vivek"]
  s.date = %q{2010-12-31}
  s.description = %q{This gem deals about the trisul remote protocol}
  s.email = %q{vivek_rajagopal@yahoo.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "examples/strp.rb",
    "lib/trisulrp.rb",
    "lib/trp.pb.rb",
    "lib/trp.proto",
    "lib/trplib.rb",
    "test/Demo_Client.crt",
    "test/Demo_Client.key",
    "test/helper.rb",
    "test/test_trisulrp.rb",
    "trisulrp.gemspec"
  ]
  s.homepage = %q{http://github.com/vivekrajan/trisulrp}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{trisul trp}
  s.test_files = [
    "examples/strp.rb",
    "test/helper.rb",
    "test/test_trisulrp.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
    else
      s.add_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
    end
  else
    s.add_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<ruby-protocol-buffers>, [">= 0.8.5"])
  end
end

