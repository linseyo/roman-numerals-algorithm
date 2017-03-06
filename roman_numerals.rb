def convert_to_roman(arabic_number)
  letters = ["M", "D", "C", "L"]
  response = ""
  if arabic_number >= 1000
    response += "M" * (arabic_number / 1000)
    arabic_number = arabic_number % 1000
  end
  if arabic_number >= 500
    response += "D" * (arabic_number / 500)
    arabic_number = arabic_number % 500
  end
  if arabic_number >= 100
    response += "C" * (arabic_number / 100)
    arabic_number = arabic_number % 100
  end
  if arabic_number >= 50
    response += "L" * (arabic_number / 50)
    arabic_number = arabic_number % 50
  end
  if arabic_number >= 10
    response += "X" * (arabic_number / 10)
    arabic_number = arabic_number % 10
  end
  if arabic_number >= 5
    response += "V" * (arabic_number / 5)
    arabic_number = arabic_number % 5
  end
  if arabic_number >= 1
    response += "I" * (arabic_number / 1)
    arabic_number = arabic_number % 1
  end

  response
end
