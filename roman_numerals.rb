require 'byebug'

def convert_to_roman(arabic_number, modern = false)
  arabic_array = arabic_number.to_s.split("")
  result = ""
  if !modern
    potential_lengths = [3,2,1]
    letters = ["D", "C", "L", "X", "V", "I"]
    counter = 0
    #Thousands column:
    if arabic_array.length == 4
      result += "M" * arabic_array[0].to_i
      arabic_array.delete_at(0)
    end

    potential_lengths.each do |potential_length|
      if arabic_array.length == potential_length
        first_digit = arabic_array[0].to_i
        equivalent_arabic = letters[counter]
        next_arabic = letters[counter + 1]
        if first_digit.between?(5,9)
          result += equivalent_arabic
          letter_count = first_digit - 5
          result += next_arabic * letter_count
        else
          result += next_arabic * first_digit
        end
      arabic_array.delete_at(0)
      end
      counter += 2
    end
  elsif modern
    if arabic_array.length == 4
      result += "M" * arabic_array[0].to_i
      arabic_array.delete_at(0)
    end

    letters = ["CM", "CD", "D", "C", "XC", "XL", "L", "X", "IX", "IV", "V", "I"]
    potential_lengths = [3,2,1]
    counter = 0
    potential_lengths.each do |potential_length|
      if arabic_array.length == potential_length
        first_digit = arabic_array[0].to_i

        if first_digit == 9
          result += letters[counter]
        elsif first_digit == 4
          result += letters[counter + 1]
        elsif first_digit.between?(5, 8)
          result += letters[counter + 2]
          letter_count = first_digit - 5
          result += letters[counter + 3] * letter_count
        else
          result += letters[counter + 3] * first_digit
        end

        arabic_array.delete_at(0)
      end
      counter += 4
    end
  end
  result
end
