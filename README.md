[![Gem Version](https://badge.fury.io/rb/himekuri.png)](https://badge.fury.io/rb/himekuri)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)![GitHub release](https://img.shields.io/github/release/takkii/himekuri.svg?style=flat)[![Build Status](https://travis-ci.org/takkii/himekuri.svg?branch=master)](https://travis-ci.org/takkii/himekuri)

### 日めくりとは

時刻表示に関するライブラリ群です。

日本語で令和対応もしてあります。

#### 日めくりチャレンジ

| [日めくり(Java)](https://github.com/takkii/himekuri_java) | [日めくり(C#)](https://github.com/takkii/himekuri_shaper) | [日めくり2(Ruby拡張C++)](https://github.com/takkii/himekuri2) | [日めくり(Scala)未完成](https://github.com/takkii/himekuriScala) | [日めくり(C++)](https://github.com/takkii/himekuri_c_plusplus) |

_日めくりチャレンジと称して異なる言語で同じ時刻表示の出力結果を書きました。_

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

〜 v0.1.3 → zinbei v1.5.3

Object.new.himekuri_print

Object.new.count_print

Object.new.reiwa_print

Object.new.version

v0.1.4 → zinbei v1.5.4

HimekuriClass.new.himekuri_print

HimekuriClass.new.count_print

HimekuriClass.new.reiwa_print

HimekuriClass.new.version

# -- web application --

v0.1.4 〜

Object → HimekuriClass

@himekuri = HimekuriClass.new.himekuri
@count = HimekuriClass.new.count
@reiwa = HimekuriClass.new.reiwa

〜 v0.1.3

@himekuri = Object.new.himekuri
@count = Object.new.count
@reiwa = Object.new.reiwa

use Rails / Sinatra

<%= @himekuri =>
<%= @count =>
<%= @reiwa =>

v0.1.5 〜

----------------------------HELP----------------------------

koyomi

時刻を表示:2020年08月06日：14時32分26秒
来年の1月1日まであと: 147 日です
令和2年8月6日 : R02.08.06
日めくりの数え番号 : 0.1.6

koyomi -r

時刻を表示:2020年08月06日：14時32分26秒
koyomi -k

来年の1月1日まであと: 147 日です
koyomi -c

令和2年8月6日 : R02.08.06
koyomi -v

日めくりの数え番号 : 0.1.6

----------------------------HELP----------------------------
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takkii/himekuri. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Himekuri project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/takkii/himekuri/blob/master/CODE_OF_CONDUCT.md).
