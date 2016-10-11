def word_pig_latin(word)
  p start = Time.now
  yield(word)
  p finish = Time.now
  p "result: #{(finish - start)*100} "
end
 
word = "apple"
 
word_pig_latin(word) do |word|
  if ("aeiou").include?(word[0]) 
    word << "way"
  elsif ("gl ph tr sc wh th sh sch gh qu").include?(word[0..1])
    word[2..-2] << word[0..1] << "ay"
    else
    word[1..-1] << word[0] << "ay"
  end
end
 
# p word_pig_latin("apple")
 
# p word_pig_latin("physic")
# p word_pig_latin("hector")