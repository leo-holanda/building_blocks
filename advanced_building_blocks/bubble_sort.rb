class Array
    def swap!(a,b)
        self[a], self[b] = self[b], self[a]
    self
    end
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

def bubble_sort(numberArray)
    is_sorted = false
    
    until is_sorted do
        is_sorted = true
        numberArray.each_with_index { |number, index|
            if index == numberArray.length - 1
                next
            elsif
                next_number = numberArray[index + 1]
                if number > next_number
                    is_sorted = false
                    numberArray.swap!(index, index + 1)
                end
            end
        }
    end
end

numbers_input = get_numbers
puts "Number's list"
print numbers_input 
puts ""
bubble_sort(numbers_input)
puts "Sorted number's list"
print numbers_input 
puts ""