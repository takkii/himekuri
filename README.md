[![Gem Version](https://badge.fury.io/rb/himekuri.png)](https://badge.fury.io/rb/himekuri)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)![GitHub release](https://img.shields.io/github/release/takkii/himekuri.svg?style=flat)[![Build Status](https://travis-ci.org/takkii/himekuri.svg?branch=master)](https://travis-ci.org/takkii/himekuri)

# Himekuri

日めくりは、zinbei の lib/zinbei/datetime.rb にあるコードをまとめたものです。

私物の日付周りは、こちらから参照するようにします。

※ 特徴は、日本語であることです。

## Installation

Gemfile:

```ruby

[ Gemfile ]


gem 'himekuri'


-- HEAD install --

source "https://rubygems.pkg.github.com/takkii" do
  gem "himekuri", "0.1.3.alpha.1"
end

```

And then execute:

    $ bundle install

Install it yourself as:

    $ gem install himekuri

GitHub package install use head

    $ gem install himekuri --version "0.1.3.alpha.1" --source "https://rubygems.pkg.github.com/takkii"

If install failed case

[himekuri/github page](https://github.com/takkii/himekuri/packages/97408?version=0.1.3.alpha.1)

```markdown
GitHub page right down category

here himekuri-0.1.3.alpha.1.gem

( left file icon click )

cd downloads

gem install himekuri -v 0.1.3.alpha.1
```

## Example Usage

```markdown
# -- himekuri --

[ ~ 0.1.3 ] → zinbei [ 1.5.3 ]

Object.new.himekuri_print

Object.new.count_print

Object.new.reiwa_print

Object.new.version

[ 0.1.4 ] → zinbei [ 1.5.4 ]

HimekuriClass.new.himekuri_print

HimekuriClass.new.count_print

HimekuriClass.new.reiwa_print

HimekuriClass.new.version

# -- himekuri output --

時刻を表示:2020 年 05 月 24 日：15 時 44 分 12 秒
来年の 1 月 1 日まであと: 221 日です
令和 2 年 5 月 24 日 : R02.05.24
日めくりの数え番号 : 0.1.4

# -- web application --

Example [ 0.1.4 ]
Object → HimekuriClass

@himekuri = HimekuriClass.new.himekuri
@count = HimekuriClass.new.count
@reiwa = HimekuriClass.new.reiwa

Example [ ~ 0.1.3 ]

@himekuri = Object.new.himekuri
@count = Object.new.count
@reiwa = Object.new.reiwa

call

<%= @himekuri =>
<%= @count =>
<%= @reiwa =>

# -- koyomi shell start (0.1.5) --

koyomi
koyomi -r
koyomi -k
koyomi -c
koyomi -v

# -- himekuri done --
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takkii/himekuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Himekuri project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).
