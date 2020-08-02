lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indieweb/post_types/identifier/bookmark/version'

Gem::Specification.new do |spec|
  spec.name          = 'indieweb-post_types-identifier-bookmark'
  spec.version       = Indieweb::PostTypes::Identifier::Bookmark::VERSION
  spec.authors       = ['Stephen Rushe']
  spec.email         = ['posttypes-bookmark@deeden.co.uk']

  spec.summary       = 'Identify IndieWeb Microformats 2 posts as bookmarks.'
  spec.description   = 'IndieWeb Bookmark Post Type Discovery for Microformats 2 JSON.'
  spec.homepage      = 'https://code.deeden.co.uk/indieweb-post_types-identifier-bookmark'
  spec.license       = 'MIT'

  spec.metadata = {
    'bug_tracker_uri' => 'https://code.deeden.co.uk/indieweb-post_types-identifier-bookmark/issues',
    'changelog_uri'   => 'https://code.deeden.co.uk/indieweb-post_types-identifier-bookmark/changelog',
    'homepage_uri'    => 'https://code.deeden.co.uk/indieweb-post_types-identifier-bookmark/'
  }

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'indieweb-post_types'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.57.2'
end
