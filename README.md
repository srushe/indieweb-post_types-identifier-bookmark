# Indieweb::PostTypes::Identifier::Bookmark

Indieweb::PostTypes::Identifier::Bookmark is a Ruby gem to extend [Indieweb::PostTypes](https://rubygems.org/gems/indieweb-post_types) discovery to support the [`bookmark` post type](https://indieweb.org/bookmark).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'indieweb-post_types-identifier-bookmark'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install indieweb-post_types-identifier-bookmark

## Usage

Once the gem is installed you need to configure `Indieweb::PostTypes` to use it. The following code would configure `Indieweb::PostTypes` to use the `bookmark` identifier before the default `article` identifier. You could also choose to insert the `bookmark` identifier before a different identifier if you so wish.

```ruby
Indieweb::PostTypes.configure do |config|
  config.insert_identifier(klass: Indieweb::PostTypes::Identifier::Bookmark,
                           before: Indieweb::PostTypes::Identifier::Article)
end
```

Then just use `Indieweb::PostTypes` as normal...

```ruby
post_type = Indieweb::PostTypes.type_from(data)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/srushe/indieweb-post_types-identifier-bookmark. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Indieweb::PostTypes::Identifier::Bookmark project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/srushe/indieweb-post_types-identifier-bookmark/blob/master/CODE_OF_CONDUCT.md).
