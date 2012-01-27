Gem::Specification.new do |s|
  s.name        = 'producteev'
  s.version     = '0.0.1'
  s.date        = '2012-01-26'
  s.summary     = "Api client for producteev"
  s.description = "Api client for producteev"
  s.authors     = ["Stephen Johnson"]
  s.email       = 'steve@thatbytes.co.uk'
  s.files       = ["lib/hola.rb"]
  s.homepage    =
    'http://github.com/stephenrjohnson/producteev'
  
  s.add_dependency 'httparty'
  s.add_dependency 'json'
  s.files         = `git ls-files`.split("\n")

  s.require_paths = ["lib"]
end