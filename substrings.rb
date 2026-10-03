# for each item in the dictionary, looks for how many times each word was found in the string
def substrings(str,dictionary)
  str = str.downcase
  dictionary.reduce({}) do |res, word| 
    if str.scan(word).length != 0
      res[word] = str.scan(word).length
    end
    res
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
