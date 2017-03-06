def convert_to_roman(arabic_number)
  roman_numeral = ""
  running_total = arabic_number
  roman_numeral_pairs = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }

  roman_numeral_order = [1000, 500, 100, 50, 10, 5, 1]

  roman_numeral_order.each do |roman_key|
    symbols_needed = (running_total/roman_key).floor
    symbols_needed.times {roman_numeral += roman_numeral_pairs[roman_key]}
    running_total -= symbols_needed * roman_key
  end

  roman_numeral
end
