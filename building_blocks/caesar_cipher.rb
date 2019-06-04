def get_numbers()

    print "Enter the shift factor: "
    number_input = gets.chomp

    until (/\A[-+]?\d+\z/).match(number_input) do
        print "Enter an integer to continue: "
        number_input = gets.chomp
    end   

    return number_input.to_i
end

def caesar_cipher(input, shift_factor)
    
    input.each_char { |char|
    
        converted_char = char.ord
        caesar_char = converted_char + shift_factor
    
        if (converted_char >= 97) && (converted_char <= 122)
            if caesar_char > 122
                caesar_char = (caesar_char - 122) + 96
            end
        
        elsif (converted_char >= 65) && (converted_char <= 90)
            if caesar_char > 90
                caesar_char = (caesar_char - 90) + 64
            end
        elsif (converted_char >= 48) && (converted_char <= 57)
            if caesar_char > 57
                caesar_char = (caesar_char - 57) + 47
            end
        else
            caesar_char = char
        end

        print caesar_char.chr
    }
    puts('')
end

print "Enter your statement: "
user_input = gets.chomp
shift_factor_input = get_numbers()
caesar_cipher(user_input, shift_factor_input)