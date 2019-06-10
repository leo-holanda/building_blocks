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

def bubble_sort()
    
end

numbers_input = get_numbers
bubble_sort(numbers_input)