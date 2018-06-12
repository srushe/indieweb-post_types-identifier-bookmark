lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indieweb/post_types/identifier/bookmark/version'

Gem::Specification.new do |spec|
  spec.name          = 'indieweb-post_types-bookmark'
  spec.version       = Indieweb::PostTypes::Identifier::Bookmark::VERSION
  spec.authors       = ['Stephen Rushe']
  spec.email         = ['posttypes-bookmark@deeden.co.uk']

  spec.summary       = 'Identify IndieWeb Microformats 2 posts as bookmarks.'
  spec.description   = 'IndieWeb Bookmark Post Type Discovery for Microformats 2 JSON.'
  spec.homepage      = 'https://github.com/srushe/indieweb-post_types-bookmark'
  spec.license       = 'MIT'

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/srushe/indieweb-post_types-bookmark/issues',
    'changelog_uri'   => 'https://github.com/srushe/indieweb-post_types-bookmark/blob/master/CHANGELOG.md',
    'homepage_uri'    => 'https://github.com/srushe/indieweb-post_types-bookmark/'
  }

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'indieweb-post_types'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
