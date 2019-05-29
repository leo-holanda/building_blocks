#ord .chr

def caesar_cipher(input, shift_factor)
    
    input.each_char { |char|
    
        converted_char = char.ord
        caesar_char = converted_char + 5
    
        if (converted_char) >= 97 && (converted_char <= 122)
            if caesar_char > 122
                caesar_char = (caesar_char - 122) + 96
            end
        
        elsif (converted_char) >= 65 && (converted_char <= 90)
            if caesar_char > 90
                caesar_char = (caesar_char - 90) + 64
            end
        else
            caesar_char = char
        end

        print caesar_char.chr
    }
    puts('')
end

caesar_cipher("Hello there!", 5)