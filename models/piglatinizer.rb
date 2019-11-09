class PigLatinizer
  def piglatinize(user_phrase)
    user_phrase = user_phrase.split(" ")

    user_phrase = user_phrase.map do |word|
      if word.match(/^([^aeiouAEIOU]+)/)
        first_letter = word.match(/^([^aeiouAEIOU]*)/).to_s
        "#{word.gsub(/^([^aeiouAEIOU]*)/,"")}#{first_letter}ay"
      else
        "#{word}way"
      end
    end

    user_phrase.join(" ")
  end
end
