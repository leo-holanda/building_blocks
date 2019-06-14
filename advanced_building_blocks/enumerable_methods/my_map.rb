load 'input_functions.rb'

seventhPower = Proc.new do |number|
    number = number ** 7
end

module Enumerable
    def my_map(simpleProc = nil)
        map_output = []
        
        for number in self
            if simpleProc.nil?
                map_output.push(yield(number))
            else
                map_output.push(simpleProc.call(number))
            end
        end

        return map_output
    end
end

numbers_input = get_numbers
map_output = numbers_input.my_map(seventhPower)

puts "\nMap output with proc"
print map_output
puts ""

map_output = numbers_input.my_map {|number|
    number = number - 7
}

puts "\nMap output with block"
print map_output
puts ""