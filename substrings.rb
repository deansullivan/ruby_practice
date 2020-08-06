def substring(word, dictionary)

    check_word = word.downcase
    output_hash = Hash.new
  
    dictionary.each do |dictionary_word|
      if check_word.include?(dictionary_word)
       count_num = 1 if count_num == nil
       count_num += 1 if output_hash[dictionary_word] != nil
       output_hash[dictionary_word] = count_num
      end
    end
  
    p output_hash
  
  end
  
  dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "go"]
  
  substring("Howdy partner, sit down! How's it going?.", dictionary)