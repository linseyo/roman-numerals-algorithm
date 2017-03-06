def convert_to_roman(arabic_number)
  roman_number = ""
  arabic_number.to_i.times {
    roman_number += "I"
  }
  roman_number
end
