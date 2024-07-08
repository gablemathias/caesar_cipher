# rubocop: disable Metrics/AbcSize
def caesar_cipher(str, num) # rubocop:disable Metrics/MethodLength
  crypto_str = ""
  str.each_char do |char|
    ascii_value = char.ord
    if ascii_value.between?(65, 90)
      target = ascii_value + num
      str = target > 90 ? (target - 90 + 64).chr : target.chr
      crypto_str += str
    elsif ascii_value.between?(97, 122)
      target = ascii_value + num
      str = target > 122 ? (target - 122 + 96).chr : target.chr
      crypto_str += str
    else
      crypto_str += char
    end
  end
  crypto_str
end
# rubocop: enable Metrics/AbcSize

p caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"

# String.ord method -> returns the integer ordinal of the character
# Integer.chr method -> Returns the character represented by the char
# Integer.between?(a,b)
# ASCII Table
# Uppercase Letters: 65 to 90
# Lowercase Letters: 97 to 122

# Loop each character and check if it's inside the Upper or Lowercase letters scope
# if not, ignore it and compose the word with the same character
# else, check if it's lower or upper
# then do the calculations
# if the character plus the choice number is greater than the scope
# like 121 + 5 = 126, so the scope goes 126 - 122 => 4 + 97 => 101 and convert it to the actual letter.
# else, like 101 + 5 => 106, convert to the actual string value and input the value inside the new string.
