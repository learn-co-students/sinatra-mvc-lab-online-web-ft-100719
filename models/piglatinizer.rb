class PigLatinizer 

    def piglatinize(text)
        new_text = text.split(" ")
        b = new_text.map {|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(word)
      first_letter = word[0]
      if ["a", "e", "i", "o", "u","A","E","I","O","U"].include?(first_letter)
          # piglatinize word that starts with a vowel
          "#{word}way"
      else
          # piglatinize word that starts with a consonant
          consonants = []
          consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
              consonants << word[1]
              if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                consonants << word[2]
              end
            end
          "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
  end
end 