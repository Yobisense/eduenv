Gem::Specification.new do |s|
  s.name        = 'eduenv'
  s.version     = '0.0.2'
  s.date        = '2017-05-15'
  s.summary     = "Ruby implemntation of the yobisense eduevn standard."
  s.description = "Ruby implementation of the yobisene eduenv standard."
  s.authors     = ["Tjad Clark"]
  s.email       = 'tjad.clark@yobisense.co.za'
  s.files       = Dir['lib/**/*.rb','lib/tasks.rake']
  s.homepage    =
      'http://rubygems.org/gems/eduenv'
  s.license       = 'MIT'
  s.add_runtime_dependency 'neo4j', '~> 8.0', '>= 8.0.6'
  s.add_runtime_dependency 'activesupport', '~> 5.1.1', '>= 5.1.1'

end