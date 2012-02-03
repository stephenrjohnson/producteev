require File.expand_path('../lib/producteev/version.rb', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'producteev'
  s.version       = Producteev::VERSION::STRING.dup
  s.date        = '2012-01-26'
  s.summary     = "Api client for producteev"
  s.description = "Api client for producteev"
  s.authors     = ["Stephen Johnson"]
  s.email       = 'steve@thatbytes.co.uk'
  s.required_ruby_version = '>= 1.8.7'
  s.homepage    =
    'http://github.com/stephenrjohnson/producteev'
  
  s.add_dependency 'httparty'
  s.add_dependency 'json'
  s.files         =  Dir['Rakefile', '{lib,spec}/**/*', 'README*'] 
  s.add_development_dependency 'rspec', '~> 2.8.0'

  s.require_paths = ["lib"]
end
