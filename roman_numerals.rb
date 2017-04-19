def convert_to_roman(arabic_number)
  remainder = arabic_number
  roman_numeral = ''
  while remainder >= 5 do
    case remainder
    when 1000...Float::INFINITY
      remainder, roman_numeral = number_to_roman(remainder, roman_numeral, 1000, 'M')
    when 500...1000
      remainder, roman_numeral = number_to_roman(remainder, roman_numeral, 500, 'D')
    when 100...500
      factor_to_multiply = remainder / 100
      roman_numeral += 'C' * factor_to_multiply
      remainder = remainder - (100 * factor_to_multiply)
    when 50...100
      factor_to_multiply = remainder / 50
      roman_numeral += 'L' * factor_to_multiply
      remainder = remainder - (50 * factor_to_multiply)
    when 10...50
      factor_to_multiply = remainder / 10
      roman_numeral += 'X' * factor_to_multiply
      remainder = remainder - (10 * factor_to_multiply)
    else
      roman_numeral += 'V'
      remainder = remainder - 5
    end
  end
  roman_numeral += 'I' * remainder
end

def number_to_roman(remainder, roman_numeral, divide_by, roman_letter)
  factor_to_multiply = remainder / divide_by
  roman_numeral += roman_letter * factor_to_multiply
  remainder = remainder - (divide_by * factor_to_multiply)
  return remainder, roman_numeral
end

# factor_to_multiply = remainder / 5
# converted_number += 'V' * factor_to_multiply
# remainder = remainder - (5 * factor_to_multiply)
#

def convert_to_roman2(arabic_number)
  # old_roman_numerals = {
  #   1: 'I',
  #   5: 'V',
  #   10: 'X',
  #   50: 'L',
  #   100: 'C',
  #   500: 'D',
  #   1000: 'M'
  # }

  # new_roman_numerals = {
  #   4: 'IV',
  #   9: 'IX',
  #   14: 'XIV',
  #   44: 'XLIV',
  #   99: 'XCIX',
  #   400: 'CD',
  #   944: 'CMXLIV'
  # }
  converted_number = ''
  case
  when arabic_number >= 1000
    factor_to_multiply = arabic_number / 1000
    converted_number += 'M' * factor_to_multiply
    remainder = arabic_number - (1000 * factor_to_multiply)
  when remainder >= 500
    factor_to_multiply = remainder / 500
    converted_number += 'D' * factor_to_multiply
    remainder = remainder - (500 * factor_to_multiply)
  when remainder >= 100
    factor_to_multiply = remainder / 100
    converted_number += 'C' * factor_to_multiply
    remainder = remainder - (100 * factor_to_multiply)
  when remainder >= 50
    factor_to_multiply = remainder / 50
    converted_number += 'L' * factor_to_multiply
    remainder = remainder - (50 * factor_to_multiply)
  when remainder >= 10
    factor_to_multiply = remainder / 10
    converted_number += 'X' * factor_to_multiply
    remainder = remainder - (10 * factor_to_multiply)
  when remainder >= 5
    factor_to_multiply = remainder / 5
    converted_number += 'V' * factor_to_multiply
    remainder = remainder - (5 * factor_to_multiply)
  when remainder >= 1
    factor_to_multiply = remainder / 1
    converted_number += 'I' * factor_to_multiply
  end
  converted_number
end
