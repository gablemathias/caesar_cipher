def caesar_cipher(string, shift_factor)
  alphabet = ("a".."z").to_a
  upcase_alphabet = ("A".."Z").to_a
  crypto_string = ""

  def change_char(target_alphabet, letter_index, shift_factor)
    alphabet_size = target_alphabet.length
    if letter_index + shift_factor > alphabet_size
      target_alphabet[letter_index + shift_factor - alphabet_size]
    else
      target_alphabet[letter_index + shift_factor]
    end
  end

  string.each_char do |char|
    if alphabet.include?(char)
      crypto_string += change_char(alphabet, alphabet.index(char), shift_factor)
    elsif upcase_alphabet.include?(char)
      crypto_string += change_char(upcase_alphabet, upcase_alphabet.index(char), shift_factor)
    else
      # If doesn't include, insert the own char, like space.
      crypto_string += char
    end
  end

  return crypto_string
end

puts caesar_cipher("What a string!", 5)
# output: "Bmfy f xywnsl!"