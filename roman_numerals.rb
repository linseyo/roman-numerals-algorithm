# def convert_to_roman(arabic_number)
#   if arabic_number == 1
#     return "I"
#   else arabic_number == 4
#     return "IIII"
#   end
# end

def convert_to_roman(arabic_number)
  arabic_string = arabic_number.to_s
  arabic_array = arabic_string.split("")
  roman_array = ""
  #Thousands column:
  if arabic_array.length == 4
    if arabic_array[0] == "3"
      roman_array += "MMM"
    elsif arabic_array[0] == "2"
      roman_array += "MM"
    else
      roman_array += "M"
    end
    arabic_array.delete_at(0)
  end
  #Hundreds column:
  if  arabic_array.length == 3
    hundreds_digit = arabic_array[0]
    if hundreds_digit.to_i.between?(5,9)
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
    if tens_digit.to_i.between?(5,9)
      roman_array += "L"
      number_of_ls = tens_digit.to_i - 5
      roman_array += "X" * number_of_ls.to_i
    else
      roman_array += "X" * number_of_ls.to_i
  arabic_array.delete_at(0)
  end
  # if arabic_array.length == 1
  # end
  ## Print out array as a string

end

convert_to_roman(1900)
convert_to_roman(3900)




