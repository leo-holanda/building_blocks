def compare(word, key)
    word.downcase!
    key.downcase!

    if word.index(key).nil?
        return false
    end

    return true
end

def check_substrings(string, dictionary)
    substrings = {}
    string = string.split()

    for word in string
        for key in dictionary
            if compare(word, key) == true
                substrings[key] = (substrings[key].to_i + 1).to_s 
            end
        end
    end

    return substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts check_substrings("Howdy partner, sit down! How's it going?", dictionary)