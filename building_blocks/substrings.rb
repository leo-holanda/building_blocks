def get_dictionary()
    words = []
    user_input = ""
    puts "Enter -1 to end"
    until user_input == "-1" do
        print "Enter a new key: "
        user_input = gets.chomp
        words.push(user_input)
    end
    words.pop
    return words
end

def compare(word, key)
    word.downcase!
    key.downcase!

    if key.index(word).nil?
        return false
    end

    return true
end

def check_substrings(string, dictionary)
    substrings = {}
    string = string.split

    for key in dictionary
        for word in string
            if compare(key, word) == true
                substrings[key] = (substrings[key].to_i + 1).to_s 
            end
        end
    end

    return substrings
end

dictionary = get_dictionary
print "Your dictionary: "
print dictionary
puts "\n\n"
print "Enter your statement: "
user_string = gets.chomp
puts "\n"
puts "Substrings found in your statement"
puts check_substrings(user_string, dictionary)