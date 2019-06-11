load 'input_functions.rb'

class Array
    def swap!(a,b)
        self[a], self[b] = self[b], self[a]
    self
    end
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
puts "\nNumber's list"
print numbers_input 
puts ""

bubble_sort(numbers_input)
puts "\nSorted number's list"
print numbers_input 
puts ""