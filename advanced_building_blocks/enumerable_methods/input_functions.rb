def get_words()
    wordList = []
    user_input = ""
    puts "Enter -1 to end"
    until user_input == "-1" do
        print "Enter a new key: "
        user_input = gets.chomp
        wordList.push(user_input)
    end
    wordList.pop
    return wordList
end

def get_numbers()
    numbers = []
    puts "Enter n to end"

    while(true)
        print "Enter a number: "
        number_input = gets.chomp

        if number_input == "n"
            break
        end
        
        until (/\A[-+]?\d+\z/).match(number_input) do
            print "Enter an integer to continue: "
            number_input = gets.chomp
        end   

        numbers.push(number_input.to_i) 
    end
    return numbers
end
