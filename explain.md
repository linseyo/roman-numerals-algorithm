roman_numerals.rb translates modern/arabic numbers (123..) to roman numerals (I, II, III..)
It supports both old (IIII) and modern (IV) forms.

Pseudocode:

accept parameters arabic_number and modern (default = true)
create an empty string "roman numeral" to store the return
store arabic_number in a cariable called running total

roman_numeral_pair - hash that pairs arabic to roman numeral
roman_numeral_pairs_modern - hash pairs arabic to modern roman numeral cases (4s and 9s)
define an order to replace arabic numbers

if modern == true, combine the two hashes
  define an order to replace arabic numbers (including the modern roman cases)

for each value in the defined order, divide the running total bu the current value in the iteration over roman_numeral_order.  store the result in symbols_needed.

value in symbols_needed times - add appropriate value at key from roman_numeral_pairs/modern

subtract symbols_needed times roman_key from running total

return roman_numeral

Tests:
  it 'outputs to stdout' do
    expect {convert_to_roman(23).to output('XXIII').to_stdout}
  end

  it 'errors on invalid input' do
    expect {convert_to_roman("f")).to output('sorry, input not valid.').to_stdout}
  end

  it 'handles decimal input' do
    expect(convert_to_roman(23.3)).to eq "XXIII"
  end

Refactor:   

validate input:
# this refactor validates the input value and handles invalid input.

valid_input = arabic_number.to_s =~ /\A\d\d?\d?\d?\.?\d?\d?\Z/

  if valid_input != nil
    running_total = arabic_number
  else
    puts "sorry, input not valid."
    exit
  end

simplify hash / modern handling:
# this refactor puts all conversion data in a single hash, and selects the needed parts as needed.

roman_numeral_pairs = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
    50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }

if modern
  roman_numeral_order = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
else
  roman_numeral_order = [1000, 500, 100, 50, 10, 5, 1]
end
