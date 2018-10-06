require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |string|
    string.split.collect do |letter|
      letter.sort_by { |letter| ESPERANTO_ALPHABET.index(letter) }
    end
  end
end