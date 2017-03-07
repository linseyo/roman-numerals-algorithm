def convert_to_roman(arabic_number)
  # Converts arabic number into "I"
  arabic_array = [1, 4]
  roman_array = ["I", "IIII"]

  # Converts arabic 1 to "I"
  arabic_index = arabic_array.find_index(arabic_number)
  roman_string = roman_array[arabic_index]



end
