class PigLatinizer

  def piglatinize(input_string)
    input_string.split(' ').length == 1 ? piglatinize_word(input_string) : piglatinize_sentence(input_string)
  end

  def piglatinize_word(word)
    array= word.split.collect do |word|
    if word.match(/^[aeiouAEIOU]/)
      word<<"way"
      word
    elsif !word.match(/^[aeiouAEIOU]/)
      array=word.split('')
      shifted=""
        until array.first.match(/[aeiou]/)
          shifted<<array.shift
        end
      array.join + shifted + "ay"
      end
    end
    array.join(' ')
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
end


# ORIGINAL ANSWER (TOTES WORKED, TOO)
#
#   attr_reader :words
#
#   def initialize(words)
#     @words=words
#   end
#
#
#   def piglatinize
#     array= words.split.collect do |word|
#       if word.match(/^[aeiouAEIOU]/)
#         word<<"way"
#         word
#       elsif !word.match(/^[aeiouAEIOU]/)
#         array=word.split('')
#         shifted=""
#           until array.first.match(/[aeiou]/)
#             shifted<<array.shift
#           end
#         array.join + shifted + "ay"
#       end
#     end
#     array.join(' ')
#   end
