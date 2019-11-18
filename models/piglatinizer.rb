require "pry"
class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    latin = ""
    words.each do |word|
      if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
        latin = latin + word + "way "
      else
        parts = word.split(/([aeiou].*)/)
        latin = latin + parts[1] + parts[0] + "ay "
      end
    end
    latin.strip
  end
end