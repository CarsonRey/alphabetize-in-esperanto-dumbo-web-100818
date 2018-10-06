require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |string|
    string.split("").collect do |letter|
        ESPERANTO_ALPHABET.index(letter)
    end
  end
end

# don't need to iterate down to 'letter' from each word in the string. '.split("")' takes care of splitting each word into letters.

#'.split' on its own will default to seperating words in a sentence, but given an argument of '("")' it will split each element(word) with no space in between as well as the space between words.