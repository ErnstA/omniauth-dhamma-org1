# Omniauth Dhamma Org1 Strategy

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/omniauth-dhamma-org1`. To experiment with that code, run `bin/console` for an interactive prompt.

Strategy to authenticate with Dhamma.org via OAuth2 in OmniAuth.

Get your API key at: ???

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-dhamma-org1'
```

And then execute:

    $ bundle

## Usage

Here's an example for adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dhamma-org1, ENV['DO_CLIENT_ID'], ENV['DO_CLIENT_SECRET']
end
```

You can now access the OmniAuth D.O. OAuth2 URL: `/auth/dhamma_org1`

For more examples please check out `examples/omni_auth.rb` TODO

NOTE: While developing your application, if you change the scope in the initializer you will need to restart your app server. Remember that either the 'email' or 'profile' scope is required!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/omniauth-dhamma-org1.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
