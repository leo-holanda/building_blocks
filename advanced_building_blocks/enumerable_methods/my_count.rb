load 'input_functions.rb'

module Enumerable
    def my_count
        count = 0
        for i in self
            if yield(i)
                count += 1
            end
        end
        return count
    end
end

numbers_input = get_numbers
check_number = get_single_number
count = numbers_input.my_count { |number|
    number == check_number
}

puts "\nResult: #{count}"