# Define the dictionnary of correspondance
@dictionary = {
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
# get the letter from the dictionary
def get_letter(letter)
  @current_letter = @dictionary[letter]
  @current_letter
end
# Decode a word

def decode_word(word)
  @letters = word.split
  @current_word = ''
  @letters.each do |letter|
    get_letter(letter)
    @current_word += get_letter(letter)
  end
  print "#{@current_word} "
end

# decode a compelete message
def decode_message(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_word(word)
  end
end
decode_message("-- -.--   -. .- -- .")
