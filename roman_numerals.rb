# def convert_to_roman(arabic_number)
#   if arabic_number == 1
#     return "I"
#   else arabic_number == 4
#     return "IIII"
#   end
# end

def convert_to_roman(arabic_number, modern = false)
  arabic_array = arabic_number.to_s.split("")
  roman_array = ""
  if !modern
    potential_lengths = [3,2,1]
    letters = ["D", "C", "L", "X", "V", "I"]
    counter = 0
    #Thousands column:
    if arabic_array.length == 4
      roman_array += "M" * arabic_array[0].to_i
      arabic_array.delete_at(0)
    end
    #Hundreds column:
    potential_lengths.each do |potential_length|
      if arabic_array.length == potential_length
        first_digit = arabic_array[0].to_i
        equivalent_arabic = letters[counter]
        next_arabic = letters[counter + 1]
        # if first_digit.between?(5,9)
          roman_array += next_arabic * first_digit
        # end
      arabic_array.delete_at(0)
      end
      counter += 2
    end

  else
    potential_lengths = [3,2,1]
    letters = ["D", "C", "L", "X", "V", "I"]
    counter = 0
    #thousands column
    if arabic_array.length == 4
      roman_array += "M" * arabic_array[0].to_i
      arabic_array.delete_at(0)
    end
    #Hundreds column:
    if  arabic_array.length == 3
      hundreds_digit = arabic_array[0]
      if hundreds_digit.to_i == 9
        roman_array += "CM"
      elsif hundreds_digit.to_i == 4
        roman_array += "CD"
      elsif hundreds_digit.to_i.between?(5,8)
        roman_array += "D"
        number_of_cs = hundreds_digit.to_i - 5
        roman_array += "C" * number_of_cs.to_i
      else
        roman_array += "C" * hundreds_digit.to_i
      end
      arabic_array.delete_at(0)
    end
    #Tens column:
    if arabic_array.length == 2
      tens_digit = arabic_array[0]
      if tens_digit.to_i == 9
        roman_array += "XC"
      elsif tens_digit.to_i == 4
        roman_array += "XL"
      elsif tens_digit.to_i.between?(5,8)
        roman_array += "L"
        number_of_ls = tens_digit.to_i - 5
        roman_array += "X" * number_of_ls.to_i
      else
        roman_array += "X" * tens_digit.to_i
      end
      arabic_array.delete_at(0)
    end
    if arabic_array.length == 1
      ones_digit = arabic_array[0]
      if ones_digit.to_i == 9
        roman_array += "IX"
      elsif ones_digit.to_i == 4
        roman_array += "IV"
      elsif ones_digit.to_i.between?(5,8)
        roman_array += "V"
        number_of_vs = ones_digit.to_i - 5
        roman_array += "I" * number_of_vs.to_i
      else
        roman_array += "I" * ones_digit.to_i
      end
    end
  end
  roman_array
end


