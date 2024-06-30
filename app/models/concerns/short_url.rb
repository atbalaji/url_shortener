class ShortURL
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE_LENGTH = ALPHABET.length

  def self.encode(key)
    encoded_string = ""

    while key > 0 do
      encoded_string.prepend ALPHABET[key % BASE_LENGTH]
      key /= BASE_LENGTH
    end

    encoded_string
  end

  def self.decode(encoded_string)
    decoded_number = 0

    encoded_string.reverse.char_with_index do |char, index|
      decoded_number += ALPHABET.index(char) * BASE ** index
    end

    decoded_number
  end

end
