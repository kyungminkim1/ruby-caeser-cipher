# caesar_cipher() accepts two arguments, a string and shift_factor (int)

    # encode string to US-ASCII
    # convert string to bytes array
    # for each ascii value
    # check if ascii value converts to a letter
        # check if new ascii value is greater than 90 (uppercase z)
            # add shift_factor to ascii value and apply modulo 90
            # add the result by 64 (ascii value before uppercase a)
        # else check if new ascii value if greater than 122 (lowercase z)
            # add shift_factor to ascii value and apply modulo
            # add the result by 96 (ascii value before lowercase a)
        # convert new ascii result to char
    
    # concat char together


def caesar_cipher(string, shift_factor)
    string = string.encode("US-ASCII")
    ascii_values = string.bytes
    new_chars = ascii_values.map do |ascii_value|
        # check if uppercase letter        
        if ascii_value >= 65 && ascii_value <= 90
            ascii_value = ascii_value + shift_factor
            # check if ascii_value exceeds range
            if ascii_value > 90
                ascii_value = 64 + (ascii_value % 90)
            elsif ascii_value < 65
                ascii_value = 90 + (ascii_value - 64)
            end
        elsif ascii_value >= 97 && ascii_value <= 122
            ascii_value = ascii_value + shift_factor
            # check if ascii_value exceeds range
            if ascii_value > 122
                ascii_value = 96 + (ascii_value % 122)
            elsif ascii_value < 97
                ascii_value = 122 + (ascii_value - 96)
            end
        end
        new_char = ascii_value.chr
    end
    
    new_string = new_chars.join
end

puts caesar_cipher("What a string!", 25)