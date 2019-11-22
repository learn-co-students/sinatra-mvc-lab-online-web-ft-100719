class PigLatinizer
  def piglatinize(user_input)
    user_input.split(" ").size == 1 ? piglatinize_word(user_input) : piglatinize_sentence(user_input)
  end

  def begins_with_vowel?(word)
    word[/^[AEIOUaeiou]/]
  end

  def piglatinize_word(word)
    if begins_with_vowel?(word)
      word << "way"
    else
      first_vowel = word.index(word[1..-1][/[AEIOUaeiou]/])
      word[first_vowel..-1] << word[0..first_vowel - 1] << "ay"
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split(" ").collect {|word| piglatinize_word(word)}.join(" ")
  end
end