def convert_to_roman(arabic_number, modern = false)
  roman_numeral = ""

# seth's refactor
valid_input = arabic_number.to_s =~ /\A\d\d?\d?\d?\.?\d?\d?\Z/

  if valid_input != nil
    running_total = arabic_number
  else
    puts "sorry, input not valid."
    exit
  end

  roman_numeral_pairs = {
      1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
      50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
    }

  if modern
    roman_numeral_order = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  else
    roman_numeral_order = [1000, 500, 100, 50, 10, 5, 1]
  end

  roman_numeral_order.each do |roman_key|
    symbols_needed = (running_total/roman_key).floor
    symbols_needed.times {roman_numeral += roman_numeral_pairs[roman_key]}
    running_total -= symbols_needed * roman_key
  end

  roman_numeral
end
