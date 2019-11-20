class PigLatinizer

    def piglatinize(string)
      fixed_words = separate_words(string).map do |word|
        first_vowel = index_of_first_vowel(word)
        if first_vowel.zero?
          word + 'way'
        else
          word.slice(first_vowel..-1) + word.slice(0...first_vowel) + 'ay'
        end
      end
  
      fixed_words.join(' ')
    end
  
    # returns an array of all the words in a string
    def separate_words(string)
      string.split(' ')
    end
  
    def index_of_first_vowel(string)
      string.index(/[aeiouAEIOU]/)
    end
  end