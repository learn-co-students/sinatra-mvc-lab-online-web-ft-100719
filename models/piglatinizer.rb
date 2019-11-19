class PigLatinizer

  def initialize

  end

  def piglatinize(text)
    split_text = text.split(" ")
    vowels = %w[a e i o u A E I O U]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z]
    piglatin_words = []
    split_text.each do |word|
      if vowels.include?(word[0])
        piglatin_words << (word + "way")
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        piglatin_words << (word[3..-1] + word[0..2] + "ay")
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        piglatin_words << (word[2..-1] + word[0..1] + "ay")
      elsif word[0..1] == "qu"
        piglatin_words << (word[2..-1] + word[0..1] + "ay")
      elsif consonants.include?(word[0])
        piglatin_words << (word[1..-1] + word[0] + "ay")
      end
    end
    piglatin_words.join(" ")
  end

end
