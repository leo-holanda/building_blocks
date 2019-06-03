def compare(string, word)
    return string.include?(word)
end

def check_substrings(string, dictionary)
    substrings = {}
    for word in dictionary
        if compare(string, word) == true
            new_value = (substrings[word].to_i + 1).to_s
            substrings[word] = new_value
        end
    end

    return substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts check_substrings("below", dictionary)