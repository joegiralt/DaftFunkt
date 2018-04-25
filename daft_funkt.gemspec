Gem::Specification.new do |s|
  s.name        = 'daft_funkt'
  s.version     = '0.0.0'
  s.date        = '2018-04-24'
  s.summary     = 'A lodash/fp inspired library for ruby'
  s.authors     = ['Joseph Giralt']
  s.email       = 'joe.m.giralt@gmail.com'
  s.files = [
    'lib/daft_funkt.rb',
    *Dir['lib/daft_funkt/*.rb']
  ]
  s.homepage    = 'https://github.com/joegiralt/DaftFunkt'
  s.license     = 'MIT'
  s.add_development_dependency 'rspec', '~> 3.7.0'
end
