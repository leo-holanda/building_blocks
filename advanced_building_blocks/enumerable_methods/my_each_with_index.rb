load 'input_functions.rb'

module Enumerable
    def my_each_with_index
        for i in (0...(self.length))
            yield(self[i], i)
        end
    end
end

numbers_input = get_numbers
return_variable = numbers_input.my_each_with_index { |number, index|
    puts "[#{index}] = #{number}"
}