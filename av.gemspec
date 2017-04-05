# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','av','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'av'
  s.version = Av::VERSION
  s.author = 'Stephen Wong'
  s.email = 'veetase@gmail.com'
  s.homepage = 'http://veetase.cf'
  s.platform = Gem::Platform::RUBY
  s.summary = 'an easy-use tool for automatically backup datebase to cloud.'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','av.rdoc']
  s.rdoc_options << '--title' << 'av' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'av'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.16.0')
end
