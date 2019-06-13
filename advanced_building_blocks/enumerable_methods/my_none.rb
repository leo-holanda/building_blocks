load 'input_functions.rb'

module Enumerable
    def my_none?
        for i in self
            if yield(i)
                return false
            end
        end
        return true
    end
end

numbers_input = get_numbers
check = numbers_input.my_none? { |number|
    number > 10
}

puts "\nResult: #{check}"