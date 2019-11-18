class PigLatinizer

    def piglatinize(text)
        words_array = text.split(" ")
        translated_array = words_array.map {|word| piglatinize_word(word)}
        translated_array.join(" ")
    end

    def piglatinize_word(word)
        all_vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        first_letter = word[0]
        if all_vowels.include?(first_letter)
            new_word = "#{word}way"
        
        else
            split_word = word.split(/([aeiou].*)/)
            new_word = "#{split_word[1]}#{split_word[0]}ay"
        end
    end
end