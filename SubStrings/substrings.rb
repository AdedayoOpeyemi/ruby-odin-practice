def substrings(words, dictionary)
  result_hash = Hash.new(0)
  words_array = words.split(' ')

  words_array.each do |word|
    dictionary.each do |subword|
      if word.downcase.include? subword
        result_hash[subword] += 1
      end
    end
  end
  result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)