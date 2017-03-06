def convert_to_roman(arabic_number)
  roman_numeral = ""
  running_total = arabic_number

  num_thousands = (running_total/1000).floor
  num_thousands.times {roman_numeral += "M"}
  running_total -= num_thousands * 1000

  num_five_hundreds = (running_total/500).floor
  num_five_hundreds.times {roman_numeral += "D"}
  running_total -= num_five_hundreds * 500

  num_hundreds = (running_total/100).floor
  num_hundreds.times {roman_numeral += "C"}
  running_total -= num_hundreds * 100

  num_fifties = (running_total/50).floor
  num_fifties.times {roman_numeral += "L"}
  running_total -= num_fifties * 50

  num_tens = (running_total/10).floor
  num_tens.times {roman_numeral += "X"}
  running_total -= num_tens * 10

  num_fives = (running_total/5).floor
  num_fives.times {roman_numeral += "V"}
  running_total -= num_fives * 5

  num_ones = (running_total%5)
  num_ones.times {roman_numeral += "I"}


  roman_numeral
end
