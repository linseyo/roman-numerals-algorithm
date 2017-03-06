
# converts arabic numbers to old roman for V and I
def convert_to_roman(arabic_number)
  roman_number = ""

  v_quantity = arabic_number/5
  v_quantity.times {
    roman_number += "V"
  }

  i_quantity = arabic_number%5
  i_quantity.times {
    roman_number += "I"
  }

  roman_number
end
