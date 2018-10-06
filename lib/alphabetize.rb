require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |string|
    string.split("").collect do |word|
      binding.pry
      word.split.sort_by do |letter| 
        ESPERANTO_ALPHABET.index(letter)
      end
    end
  end
end