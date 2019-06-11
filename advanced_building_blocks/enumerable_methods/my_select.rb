load 'input_functions.rb'

module Enumerable
    def my_select
        selectedElements = []
        for i in self
            if yield(i)
                selectedElements.push(i)
            end
        end
        return selectedElements
    end
end

numbers_input = get_numbers
selectArray = numbers_input.my_select { |number|
    number > 5
}

puts "\nSelected elements"
print selectArray
puts ""