def substring(input_string, dictionary)
  output = {}
  dictionary.each do |item|
    num_occurrences = input_string.downcase.scan(item.downcase).length
    if num_occurrences > 0
      output[item] = num_occurrences
    end
  end
  puts output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("Howdy partner, sit down! How's it going?", dictionary)