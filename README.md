[![Gem Version](https://badge.fury.io/rb/himekuri.png)](https://badge.fury.io/rb/himekuri)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)![GitHub release](https://img.shields.io/github/release/takkii/himekuri.svg?style=flat)[![Build Status](https://travis-ci.org/takkii/himekuri.svg?branch=master)](https://travis-ci.org/takkii/himekuri)

# Himekuri

日めくりは、zinbeiのlib/zinbei/datetime.rbにあるコードをまとめたものです。

私物の日付周りは、こちらから参照するようにします。

※ 特徴は、日本語であることです。

## Installation

Gemfile:

```ruby

[ Gemfile ]


gem 'himekuri'


-- Or HEAD install --

source "https://rubygems.pkg.github.com/takkii" do
  gem "himekuri", "0.1.2"
end

```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install himekuri

Or GitHub package install

    $ gem install himekuri --version "0.1.2" --source "https://rubygems.pkg.github.com/takkii"

## Example Usage

```markdown

# -- himekuri --

Object.new.himekuri_print

Object.new.count_print

Object.new.reiwa_print

Object.new.version

# -- himekuri output --

時刻を表示:2020年01月07日 15時01分57秒
来年の1月1日まであと: 359 日です
令和2年1月7日 R02.01.07
日めくりの数え番号 : 0.1.2

# -- web application --

Example

@himekuri = Object.new.himekuri
@count = Object.new.count
@reiwa = Object.new.reiwa

call

<%= @himekuri =>
<%= @count =>
<%= @reiwa =>

# -- himekuri done --

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takkii/himekuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Himekuri project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).
