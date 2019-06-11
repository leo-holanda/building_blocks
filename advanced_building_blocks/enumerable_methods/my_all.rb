load 'input_functions.rb'

module Enumerable
    def my_all?
        for i in self
            if not yield(i)
                return false
            end
        end
        return true
    end
end

numbers_input = get_numbers
check = numbers_input.my_all? { |number|
    number > 10
}

puts "\nResult: #{check}"