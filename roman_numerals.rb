def convert_to_roman(arabic_number, modern = false)
  remainder = arabic_number
  roman_numeral = ''
  while remainder >= 5 do
    case remainder
    when 1000...Float::INFINITY
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 1000, 'M')
    when 500...1000
      if modern
        remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 900, 'CM')
      end 
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 500, 'D')
    when 100...500
      if modern
        remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 400, 'CD')
      end
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 100, 'C') 
    when 50...100
      if modern
        remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 90, 'XC')
      end 
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 50, 'L')
    when 10...50
      if modern
        remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 40, 'XL')
      end 
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 10, 'X')
    else
      if modern
        remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 9, 'IX')
      end
      remainder, roman_numeral = number_to_old_roman(remainder, roman_numeral, 5, 'V')
    end
  end
  if modern
    remainder, roman_numeral = number_to_modern_roman(remainder, roman_numeral, 4, 'IV')
  end 
  roman_numeral += 'I' * remainder
end

def number_to_old_roman(remainder, roman_numeral, divide_by, roman_letter)
  factor_to_multiply = remainder / divide_by
  roman_numeral += roman_letter * factor_to_multiply
  remainder = remainder - (divide_by * factor_to_multiply)
  return remainder, roman_numeral
end

def number_to_modern_roman(remainder, roman_numeral, divide_by, roman_letter)
  if remainder >= divide_by
    remainder = remainder - (divide_by)
    roman_numeral += roman_letter
  end
  return remainder, roman_numeral
end
