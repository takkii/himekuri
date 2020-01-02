[![Gem Version](https://badge.fury.io/rb/himekuri.png)](https://badge.fury.io/rb/himekuri)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)![GitHub release](https://img.shields.io/github/release/takkii/himekuri.svg?style=flat)

# Himekuri

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/himekuri`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'himekuri'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install himekuri

## Example Usage

```ruby

class Sample
	def Sample.ruby
		puts "Hello, himekuri"
	end
end

Sample.ruby

-- output --

Hello, himekuri

```

how to use.

```markdown
# -- himekuri --

Sample.new.himekuri

Sample.new.count

Sample.new.reiwa

Sample.new.version

# -- himekuri output --

時刻を表示:2020年01月02日 11時46分31秒

来年の1月1日まであと: 364 日です

令和2年1月2日 R02.01.02

日めくりの数え番号 : 0.1.1
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/himekuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/himekuri/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Himekuri project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/himekuri/blob/master/CODE_OF_CONDUCT.md).
