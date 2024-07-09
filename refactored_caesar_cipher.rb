def caesar_cipher(str, num)
  str.chars.map { |char| crypto(char, num) }.join
end

def convert_ascii(target, min, max)
  target > max ? (target - max + min).chr : target.chr
end

def crypto(char, num)
  ascii_value = char.ord
  if ascii_value.between?(65, 90)
    convert_ascii(ascii_value + num, 64, 90)
  elsif ascii_value.between?(97, 122)
    convert_ascii(ascii_value + num, 96, 122)
  else
    char
  end
end

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
