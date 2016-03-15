require "ruby_original_aes/version"
require "ruby_original_aes/aes"

module RubyOriginalAes
  AES = Rijndael.new(4)

  module_function
  def encrypt(key, plain_txt)
    return 'key length must be 32!' if key.nil? || key.size != 32
    key = key.scan(/../).map(&:hex)
    return 'plain_txt length must <= 32' if plain_txt.size != 32
    plain_txt = plain_txt.scan(/../).map(&:hex)
    AES.load_ek(key)
    AES.load_dk(key)
    secret = AES.cipher(plain_txt)
    secret.map do |item|
      tmp = item.to_s(16)
      tmp.size == 2 ? tmp : '0' + tmp
    end.join
  end
end
