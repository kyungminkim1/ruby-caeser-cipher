# caesar_cipher() accepts two arguments, a string and shift_factor (int)
    # split the string into individual characters
    # for each char
    # check if char is a letter
        # get the ascii value
        # apply the shift_factor
        # check if new ascii value is greater than 90 (uppercase z)
            # subtract that ascii value by 90
            # add the result by 64 (ascii value before uppercase a)
        # else check if new ascii value if greater than 122 (lowercase z)
            # add the result by 96 (ascii value before lowercase a)
        # convert new ascii result to char
    
    # concat char together


def caesar_cipher(string, shift_factor)
    chars = string.split("")
    new_chars = chars.map do |char|
        ascii_value = char.ord
        # check if uppercase letter
        if ascii_value >= 65 && ascii_value <= 90
            ascii_value = 65 + (ascii_value + shift_factor) % 90
        elsif ascii_value >= 97 && ascii_value <= 122
            ascii_value = 97 + (ascii_value + shift_factor) % 122
        new_char = ascii_value.chr
        end
    end
    
    new_string = new_chars.join
end

puts caesar_cipher("What a string!", 5)