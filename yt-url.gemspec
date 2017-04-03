# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yt/url/version'

Gem::Specification.new do |spec|
  spec.name          = 'yt-url'
  spec.version       = Yt::URL::VERSION
  spec.authors       = ['Claudio Baccigalupo', 'Kang-Kyu Lee']
  spec.email         = ['claudio@fullscreen.net', 'kang-kyu.lee@fullscreen.net']
  spec.description   = %q{URL Extension for the Yt library.}
  spec.summary       = %q{Yt::URL helps identify which YouTube resource (video,
    channel, playlist) matches a YouTube URL in any given form.}
  spec.homepage      = 'http://github.com/fullscreen/yt-url'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.2.2'

  spec.files         = `git ls-files`.split($/)
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'yt-core',  '>= 0.1.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.20'
  spec.add_development_dependency 'pry-nav', '~> 0.2.4'
  spec.add_development_dependency 'yard', '~> 0.9.8'
end