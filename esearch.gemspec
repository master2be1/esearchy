require 'rubygems'
# require 'platform'
SPEC = Gem::Specification.new do |s| 
  s.name = "esearchy"
  s.version = "0.0.3"
  s.author = "Matias P. Brutti"
  s.email = "matiasbrutti@gmail.com"
  s.homepage = "http://freedomcoder.com.ar/esearchy"
  s.platform = Gem::Platform::RUBY
  s.summary = "A library to search for emails in search engines"
  s.files = Dir.glob("**/*")
  %w{esearchy}.each do |command_line_utility|
    s.executables << command_line_utility
  end
  s.require_path = "lib"
  s.has_rdoc = true 
  s.extra_rdoc_files = ["README"] 
  s.add_dependency("pdf/reader", ">= 0.7.5")
  s.add_dependency("json", ">= 1.1.6")
  s.add_dependency("rubyzip", ">= 0.9.1")
  s.add_dependency("platform", ">= 0.4.0")
  #Still not sure of what version and how to filter this only to be required on Windows
  #s.add_dependency("win32ole", ">= 1.2.1") if Platform::IMPL == :mswin
end 
