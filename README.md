# JrubyHelloWorld

Welcome to ythe JRuby Hello World RubyGem, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jruby_hello_world`. To experiment with that code, run `bin/console` for an interactive prompt.

The JRuby Hello World gem is an example library that uses Sinatra as a web application framework. This then can be bundled up using Warbler and JRuby, and packaged into a WAR or Executable WAR. Then the WAR can be placed into the `$CATALINA_HOME/webapps` directory where Tomcat will unpackage it and run the web application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jruby_hello_world'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jruby_hello_world

## Usage

Clone this repository locally and cd into it. Issue the following commands to build a WAR for Tomcat.

```
jruby -S bundle install
```
```
jruby -S bundle exec warble war
```

Then edit the `Rakefile` to reflect the $CATALINA_HOME, and it can be used to deploy the WAR.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/predatorian3/jruby_hello_world. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
