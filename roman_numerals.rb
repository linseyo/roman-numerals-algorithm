def convert_to_roman(arabic_number, modern = false)
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

  if modern
    roman_array = roman_numeral.split('')
    i = 0
    until i == roman_array.length
      if (roman_array[i] == roman_array[i+1]) && (roman_array[i] == roman_array[i+2]) && (roman_array[i] == roman_array[i+3])
        puts "It's here!"
      end
      i += 1
    end
  end

  roman_numeral
end

convert_to_roman(4, true) #=> "IIII" but it should be "IV"
convert_to_roman(9, true) #=> "VIIII" but it should be "IX"
convert_to_roman(14, true) #=> "XIIII" but it should be "XIV"
convert_to_roman(44, true) #=> "XXXXIIII" but it should be "XLIV"
convert_to_roman(99, true) #=> "LXXXXVIIII" but it should be "XCIX"
convert_to_roman(400, true) #=> "CCCC" but it should be "CD"
convert_to_roman(944, true) #=> "DCCCCXXXXIIII" but it should be "CMXLIV"

# [900, 400, 90, 40, 9, 4]
