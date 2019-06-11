load 'input_functions.rb'

module Enumerable
    def my_each
        for i in self
            yield(i)
        end
    end
end

numbers_input = get_numbers
return_variable = numbers_input.my_each { |number|
    puts number
}