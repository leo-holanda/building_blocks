load 'input_functions.rb'

module Enumerable
    def my_map
        map_output = []
        count = 0
        for i in self
            map_output.push(yield(i))
        end
        return map_output
    end
end

numbers_input = get_numbers
map_output = numbers_input.my_map { |number|
    number = number ** 2
}

puts "\nMap output"
print map_output
puts ""