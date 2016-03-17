# Fast-AES加密16进制
```ruby
require 'fast-aes'
key = '0cbd426126d7c7ca577016f10ccb0c16'
key = key.scan(/../).map{|x| x.to_i(16)}.map(&:chr).join #需要把16进制串转为字符串(ASCII)
aes = FastAES.new(key)
text = '1c2c3c4c'
text = text.scan(/../).map{|x| x.to_i(16)}.map(&:chr).join #需要把16进制串转为字符串(ASCII)
###### 加密
data = aes.encrypt(text)
secret = data.unpack('H*') #得到的16进制密文
###### 解密
plain = aes.decrypt(data)
plain_text = plain.unpack('H*')
```

# RubyOriginalAes

纯ruby实现的AES加密算法

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_original_aes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_original_aes

## Usage


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

