def convert_to_roman(arabic_number, modern = false)
  arabic_to_roman = {1 => "I", 5 => "V" }
  roman_numeral = ""

  num_fives = arabic_number / 5


  num_fives.times do
    roman_numeral += "V"
  end

  remainder = arabic_number - (num_fives * 5)
  


  remainder.times do
    roman_numeral += "I"
  end
  roman_numeral


end