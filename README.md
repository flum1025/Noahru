Noahru
===========

##What is it?

rubyで書かれた さらすてぃAPIのクライアントライブラリです。  
たった2行で姉妹と会話することができます。  
apiについての説明は[さらすてぃ姉妹のAPI](http://flum.pw/sarasty/api.php)  
公式サイトは[さらすてぃ姉妹のサイト](http://flum.pw/sarasty/)  
  
動作確認はubuntu14.04 ruby1.9.3とOS X Yosemite ruby2.0.0です。

##How to Use
まず、さらすてぃ姉妹のサイトからAPIキーを取得してください。  
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

##Notice
エラーが発生した場合はNoahruErrorをraiseします。  
/Noahru/noahru.rbをrequireすることですべてのライブラリを呼び出すことができますが、  
最小限だけにとどめたい場合は/Noahru/lib/の中から必要なものだけrequireしてください。  
その場合、client.rbは必須なので必ずrequireしてください。  
example.rbは使用例ですので、参考にしてみてください。  
  

質問等ありましたらTwitter:[@flum_](https://twitter.com/flum_)までお願いします。

##License

The MIT License

-------
(c) @2015 flum_
