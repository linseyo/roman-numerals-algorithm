def convert_to_roman(arabic_number)
  # Your code goes here
  # case
  # when arabic_number == 1
  #   "I"
  # when arabic_number == 5
  #   "V"
  # when arabic_number == 10
  #   "X"
  # when arabic_number == 100
  #   "C"
  # when arabic_number == 500
  #   "D"
  # when arabic_number == 1000
  #   "M"
  # end
  output_number = arabic_number
  roman_string = ""

    m_letter = output_number/1000
    roman_string += "M" * m_letter
    remainder = output_number - (m_letter * 1000)

    d_letter = remainder/500
    remainder = remainder - (d_letter * 500)
    roman_string += "D" * d_letter

    c_letter = remainder/100
    remainder = remainder - (c_letter * 100)
    roman_string += "C" * c_letter

    l_letter = remainder/50
    remainder = remainder - (l_letter * 50)
    roman_string += "L" * l_letter

    x_letter = remainder/10
    remainder = remainder - (x_letter * 10)
    roman_string += "X" * x_letter

    v_letter = remainder/5
    remainder = remainder - (v_letter * 5)
    roman_string += "V" * v_letter

    i_letter = remainder/1
    remainder = remainder - (i_letter * 1)
    roman_string += "I" * i_letter

end

puts convert_to_roman(2655)
puts convert_to_roman(3452)
#   case
#   when arabic_number%1000 == 0
#     m_letter = arabic_number/1000
#     roman_string += "M" * m_letter

#   when arabic_number%500 == 0
#     roman_string += "D"
#   end

#   roman_string
# end

  # if arabic_number < 4
  #   "I" * arabic_number
  # elsif arabic_number % 4 == 0 && (arabic_number < 5)
  #   "I" + "V"
  # elsif (arabic_number % 5 == 0) && (arabic_number < 10)
  #   "V"
  # elsif (arabic_number % 5 <= 3) && (arabic_number < 10)
  #   "V" + ("I" * (arabic_number.to_i - 5))
  # elsif (arabic_number % 5 == 4) && (arabic_number < 10)
  #   "I" + "X"
  # elsif (arabic_number % 10 == 0) && (arabic_number < 50)
  #   "X" * (arabic_number.to_i / 10)
  #   elsif (arabic_number % 10 <= 3) && (arabic_number < 50)
  #   "X" + ("I" * (arabic_number.to_i - 10))
  # elsif (arabic_number % 50 == 0)
  #   "L"
  # elsif (arabic_number % 50 != 0) && (arabic_number < 100)
  #   "L" + ("X" *(arabic_number.to_i/50))
  # elsif (arabic_number % 100 == 0)
  #   "C"
  # elsif (arabic_number % 500 == 0)
  #   "D"
  # elsif (arabic_number % 1000 == 0)
  #   "M"
  # end



# puts convert_to_roman(60)
# puts convert_to_roman(70)
