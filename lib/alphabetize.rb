require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |string|
    string.split.collect do |word|
      word.split.sort_by { |letter| binding.pry ESPERANTO_ALPHABET.index(letter)}
    end
  end
end