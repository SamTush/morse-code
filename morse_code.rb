morse_code = {
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
  '-.- ' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.-- .' => 'P',
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

def decode_char(string, morse_code)
  puts morse_code[string]
end

def decode_word(morse, morse_code)
  decoded_chars = morse.split.map { |char| morse_code[char] }
  decoded_word = decoded_chars.join
  puts decoded_word
end

def decode_message(message, morse_code)
  words = message.split('   ').map { |word| decode_word(word, morse_code) }
  decoded_message = words.join(' ')
  print decoded_message
end

decode_char('.-', morse_code)
decode_word('-- -.--', morse_code)
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', morse_code)
