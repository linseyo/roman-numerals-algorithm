def convert_to_roman(arabic_number)
  remainder = arabic_number
  roman_numeral = ''
  roman_numeral += 'I' * remainder
end


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
