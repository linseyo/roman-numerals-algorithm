def convert_to_roman(arabic_number)
  roman_numeral = ""
  running_total = arabic_number

  # num_fifties = (arabic_number/10).floor
  # num_tens.times {roman_numeral += "X"}
  # running_total -= num_tens * 10


  num_tens = (arabic_number/10).floor
  num_tens.times {roman_numeral += "X"}
  running_total -= num_tens * 10

  num_fives = (running_total/5).floor
  num_fives.times {roman_numeral += "V"}
  running_total -= num_fives * 5

  num_ones = (running_total%5)
  num_ones.times {roman_numeral += "I"}


  roman_numeral
end
