# require 'pry'

class PigLatinizer

    attr_reader :text

    def piglatinize(words)
        words_arr = words.split(" ")
        piglatin_words = []

        words_arr.each do |word|
            vowel_placement = word.downcase =~ /[aeiou]/
            if vowel_placement == 0
                new_word = word + "way"
            else
                splitter = word.split(/([aeiou].*)/)
                new_word = "#{splitter[1]}#{splitter[0]}ay"
            end
            piglatin_words << new_word
        end

        piglatin_words.join(" ")

    end

end