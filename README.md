[![Gem Version](https://badge.fury.io/rb/himekuri.png)](https://badge.fury.io/rb/himekuri)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)![GitHub release](https://img.shields.io/github/release/takkii/himekuri.svg?style=flat)

# Himekuri

日めくりは、zinbeiのlib/datetime.rbにあるコードをまとめたものです。

私物の日付周りは、こちらから参照するようにします。

※ 特徴は、日本語であることです。

## Installation

Gemfile:

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/himekuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/himekuri/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Himekuri project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/himekuri/blob/master/CODE_OF_CONDUCT.md).
