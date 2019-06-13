load 'input_functions.rb'

module Enumerable
    def my_inject(result = nil)
        for i in self
            result = yield(result, i)
        end
        return result
    end
end

def multiply_els(array)
    result = array.my_inject(1) { |product, number|
        product * number
    }
    return result
end

numbers_input = get_numbers
puts "\nMultiply_els output: #{multiply_els(numbers_input)}"