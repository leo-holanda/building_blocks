def get_numbers()
    numbers = []
    puts "Enter n to end"

    while(true)
        print "Enter a number: "
        number_input = gets.chomp

        if number_input == "n"
            break
        end
        
        until /\A[-+]?\d+\z/.match(number_input) do
            print "Enter an integer to continue: "
            number_input = gets.chomp
        end   

        numbers.push(number_input.to_i) 
    end
    return numbers
end

def stock_picker(stock_prices)
    buy_index = nil
    sell_index = nil
    profit = stock_prices[1] - stock_prices[2]

    stock_prices.each_with_index { |price_1, index_1|
        stock_prices[(index_1+1)..-1].each_with_index { |price_2, index_2|
            
            #puts("#{price_1}[#{index_1}] - #{price_2}[#{index_2 + index_1 + 1}] = #{price_2 - price_1}")
            
            if price_2 - price_1 > profit
                buy_index = index_1
                sell_index = index_2 + index_1 + 1
                profit = price_2 - price_1
            end
        }
    }
        
    #puts("#{stock_prices[buy_index]} - #{stock_prices[sell_index]} = #{profit}")
    puts("[#{buy_index},#{sell_index}]")
end


numbers = get_numbers()
stock_picker(numbers)