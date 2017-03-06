def convert_to_roman(arabic_number)
  letters = ["M", "D", "C", "L", "X", "V", "I"]
  numbers = [1000, 500, 100, 50, 10, 5, 1]

  response = ""
  numbers.each do |num|
    if arabic_number >= num
      response += letters[numbers.index(num)] * (arabic_number / num)
      arabic_number = arabic_number % num
    end
  end

  response
end
