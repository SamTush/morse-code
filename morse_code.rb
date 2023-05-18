$morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(string)
  puts $morse_code[string]
end

def decode_word(morse)
  decoded_chars = morse.split.map { |char| $morse_code[char] }
  decoded_word = decoded_chars.join('')
  decoded_word
end

def decode_message(message)
  words = message.split('   ').map { |word| decode_word(word) }
  decoded_message = words.join(' ')
  decoded_message
end

decode_char(".-")
puts decode_word("-- -.--")
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
$morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(string)
  puts $morse_code[string]
end

def decode_word(morse)
  decoded_chars = morse.split.map { |char| $morse_code[char] }
  decoded_word = decoded_chars.join('')
  decoded_word
end

def decode_message(message)
  words = message.split('   ').map { |word| decode_word(word) }
  decoded_message = words.join(' ')
  decoded_message
end

decode_char(".-")
puts decode_word("-- -.--")
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
  