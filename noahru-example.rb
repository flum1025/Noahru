path = File.expand_path('../', __FILE__)
require File.join(path, 'noahru/noahru.rb')

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
dialogue.configure config = {
  :sister => "sarasty_noah",
  :user_id => "flum_",
  :mode => "markov",
}
puts dialogue.create_dialogue "たおの事どう思う？" #=>その内ヤバイ罪犯しそう
puts dialogue.get_current_data
###ここまで

###command
command = Noahru::Command.new(api_key)
command.configure config = {
  :sister => "sarasty_noah",
  :user_id => "flum_",
}
puts command.send_command "learn"
puts command.get_current_data
###ここまで

###get_talk
get_talk = Noahru::Get_talk.new(api_key)
get_talk.configure config = {
  :context => "ABCDEFGH",
}
puts get_talk.get_talk
puts get_talk.get_current_data
###ここまで

###get_user_recent
get_user_recent = Noahru::Get_user_recent.new(api_key)
get_user_recent.configure config = {
  :user_id => "flum_",
}
puts get_user_recent.get_user_recent
puts get_user_recent.get_current_data
###ここまで

