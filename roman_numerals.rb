def convert_to_roman(arabic_number, modern = false)
  roman_numeral = ""
  arabic_number.times do
    roman_numeral += "I"
  end
  roman_numeral
end