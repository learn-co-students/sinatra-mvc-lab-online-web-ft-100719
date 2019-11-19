class PigLatinizer
  
  def piglatinize(string)
      a = string.split(" ") 
      b = a.map {|word| piglatinize_word(word)}
      b.join(" ")
  end

  def piglatinize_word(word)
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
   
    part_1 = parts_of_word[1] # consonant cluster
    part_2 = parts_of_word[2] + (parts_of_word[3] || "")
    if part_1.length>0
      "#{part_2}#{part_1}ay"
    else
      "#{part_2}way"
    end
  end
end