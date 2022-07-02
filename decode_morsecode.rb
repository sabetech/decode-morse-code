def decode_char(char)
  my_morse_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  my_morse_hash[char]
end

def decode_word(word_code)
  word_code.split.map do |char|
    decode_char(char)
  end.join
end

def decode(morse_code)
  morse_code.split('   ').map do |word_code|
    decode_word(word_code)
  end.join(' ')
end

puts decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
