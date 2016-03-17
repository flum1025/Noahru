# Noahru

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/noahru`. To experiment with that code, run `bin/console` for an interactive prompt.

さらすてぃAPIのクライアントライブラリです。  
たった2行で姉妹と会話することができます。  
apiについての説明は[さらすてぃ姉妹のAPI](http://flum.pw/sarasty/api.php)  
公式サイトは[さらすてぃ姉妹のサイト](http://flum.pw/sarasty/)  

質問等ありましたらTwitter:[@flum_](https://twitter.com/flum_)までお願いします。


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'noahru'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noahru

## Usage

requireしてから

```
dialogue = Noahru::Dialogue.new(api_key)
puts dialogue.create_dialogue "たおの事どう思う？" #=>その内ヤバイ罪犯しそう
```

たったこれだけで会話することができます。   
詳しいパラメータ等は、さらすてぃ姉妹のサイトを参照して  
```
dialogue.configure config = {
  :sister => "noah",
  :user_id => "flum_",
  :mode => "markov",
}
```
の様な感じでセットしてください。

##Supported APIs
###/apis/dialogue
###/apis/command
###/apis/get_talk
###/apis/get_user_recent

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/noahru/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
