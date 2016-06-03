# Coding: UTF-8
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noahru'

api_key = ""

###Noahruの使用例
####詳しい説明は https://github.com/flum1025/noahru
####apiについての説明は http://flum.pw/sarasty/api.php
####公式サイトは http://flum.pw/sarasty/

###Copyright c @flum_ 2015
###Twitter:@flum https://twitter.com/flum_
###WEBサイト http://flum.pw/

###dialogue
dialogue = Noahru::Dialogue.new(api_key)
puts dialogue.create_dialogue "おはよう", {
  sister: :sarasty_noah,
  mode: :api
}
###ここまで