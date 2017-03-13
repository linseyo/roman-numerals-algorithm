def convert_to_roman(arabic_number, modern = false)
  arabic_to_roman =   {1 => "I", 
                      5 => "V", 
                      10 => "X",
                      50 => "L",
                      100 => "C",
                      500 => "D",
                      1000 => "M"}
  
  conversion_order = [1000, 500, 100, 50, 10, 5, 1]
  roman_numeral = ""
  remainder = arabic_number

  conversion_order.each do |number|
    numerals = remainder / number
    numerals.times { roman_numeral << arabic_to_roman[number] }
    remainder -= numerals * number
  end

  roman_numeral

  # num_fives = arabic_number / 5


  # num_fives.times do
  #   roman_numeral += "V"
  # end

  # remainder = arabic_number - (num_fives * 5)
  


  # remainder.times do
  #   roman_numeral += "I"
  # end
  # roman_numeral


end