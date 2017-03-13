Eitan & Matthew's Roman Numeral code:

RELEASE 0: Translate to plain English
You give this method a number between 1-3000, and it will give you its roman numeral equivalent.
It does this by finding the greatest 'less than' value, accounting for 9s & 4s as "one less than" numbers.
The output will be in the form of a string.

RELEASE 1: Translate to Pseudocode
This is a method that converts an arabic number into its roman numeral equivalent.
Unique Roman numerals are listed in an array called 'letters'. 
Their arabic equivalents are stored in an array called 'numbers'.
Before any iterations, Ruby knows 'response' as an empty array.
Much of the iteration must have been refactored after the 'modern or traidional' release.
For each number in the numbers array, find the index where the input is greater than.
First check if the 'modern' argument has been made true.
If yes, Skip to the next number in the array.
Now, divide this number (10) by 9
Times this number (1) by its corresponding index in letters
Add this number to the once-empty response string.
Repeat this with the number 4. 
After all digits, the output is a string of roman numerals.

RELEASE 2: Test the code

require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
    it 'converts 49 to XLIX' do
      expect(convert_to_roman(49, true)).to eq "XLIX"
    end

    it 'converts 94 to XCIV' do
      expect(convert_to_roman(94, true)).to eq "XCIV"
    end

    it 'converts 144 to CXLIV' do
      expect(convert_to_roman(144, true)).to eq "CXLIV"
    end
end 

They all pass!

RELEASE 3: Refactor
Original code:

def convert_to_roman(arabic_number, modern = false)
    letters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

    response = ""
    numbers.each_with_index do |num, index|
      next if index.odd? && !modern # Skips every other number if traditional
      if arabic_number >= num
        response += letters[index] * (arabic_number / num)
        arabic_number = arabic_number % num
      end
    end
    response
end

Refactor:

I think it might be a little cleaner if the two hashes were an array, as they directly correspond to one anothers' indexes.

equivalents = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
The main thing I'd do is break this down into multiple methods. Any method should have exactly one job.


def next_if(arabic_number, modern)
	next if index.odd? && !modern
end 

def digit_div_num(arabic_number)
	arabic_number / num
end 

def add_to_response(arabic_number, equivalents)
	equivalents.key * digit_div_num(arabic_number)
end 




