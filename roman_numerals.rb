def convert_to_roman(arabic_number, modern = false)
  if !modern
    letters = ["M", "D", "C", "L", "X", "V", "I"]
    numbers = [1000, 500, 100, 50, 10, 5, 1]

    response = ""
    numbers.each_with_index do |num, index|
      if arabic_number >= num
        response += letters[index] * (arabic_number / num)
        arabic_number = arabic_number % num
      end
    end
    response
  else
    letters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

    response = ""
    numbers.each_with_index do |num, index|
      if arabic_number >= num
        response += letters[index] * (arabic_number / num)
        arabic_number = arabic_number % num
      end
    end
    response
  end
end
