# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yt/url/version'

Gem::Specification.new do |spec|
  spec.name          = "yt-url"
  spec.version       = Yt::URL::VERSION
  spec.authors       = ['Claudio Baccigalupo']
  spec.email         = ['claudio@fullscreen.net']
  spec.description   = %q{URL Extension for the Yt library.}
  spec.summary       = %q{Yt::URL helps identify which YouTube resource (video,
    channel, playlist) matches a YouTube URL in any given form.}
  spec.homepage      = 'http://github.com/claudiob/yt-url'
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.2.2'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport',  '>= 5', '< 6'
  spec.add_dependency 'yt'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'coveralls', '~> 0.8.15'
  spec.add_development_dependency 'jekyll', '~> 3.3'
  spec.add_development_dependency 'yard', '~> 0.9.5'
end