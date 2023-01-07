# caesar_cipher() accepts two arguments, a string and shift_factor (int)

    # encode string to US-ASCII
    # convert string to bytes array
    # for each ascii value
    # check if ascii value converts to a letter
        # check if new ascii value is greater than 90 (uppercase z)
            # add shift_factor to ascii value and apply modulo
            # add the result by 65 (ascii value before uppercase a)
        # else check if new ascii value if greater than 122 (lowercase z)
            # add shift_factor to ascii value and apply modulo
            # add the result by 97 (ascii value before lowercase a)
        # convert new ascii result to char
    
    # concat char together


def caesar_cipher(string, shift_factor)
    chars = string.split("")
    new_chars = chars.map do |char|
        ascii_value = char.ord
        # check if uppercase letter        
        if ascii_value >= 65 && ascii_value <= 90
            ascii_value = 65 + (ascii_value + shift_factor) % 65
        elsif ascii_value >= 97 && ascii_value <= 122
            ascii_value = 97 + (ascii_value + shift_factor) % 97
        end
        new_char = ascii_value.chr
    end
    
    new_string = new_chars.join
end

puts caesar_cipher("What a string!", 5)