def convert_to_roman(arabic_number, modern = false)
  arabic_to_roman =           {1 => "I", 
                              5 => "V", 
                              10 => "X",
                              50 => "L",
                              100 => "C",
                              500 => "D",
                              1000 => "M"}
  if modern
    modern_roman_additions =  {4 => "IV",
                              9 => "IX",
                              40 => "XL",
                              90 => "XC",
                              400 => "CD",
                              900 => "CM"}
    arabic_to_roman.merge!(modern_roman_additions)
    conversion_order = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  else
    conversion_order = [1000, 500, 100, 50, 10, 5, 1]
  end

  roman_numeral = ""
  remainder = arabic_number

  conversion_order.each do |number|
    numerals = remainder / number
    numerals.times { roman_numeral << arabic_to_roman[number] }
    remainder -= numerals * number
  end

  roman_numeral
end