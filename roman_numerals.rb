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
