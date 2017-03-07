def convert_to_roman(arabic_number)
  # 1000's
  m = "M"*(arabic_number/1000)
  remaining = arabic_number%1000

  # 500's
  d = "D"*(remaining/500)
  remaining = remaining%500

  # 100's
  c = "C"*(remaining/100)
  remaining = remaining%100

  # 50's
  l = "L"*(remaining/50)
  remaining = remaining%50

  # 10's
  x = "X"*(remaining/10)
  remaining = remaining%10

  # 5's
  v = "V"*(remaining/5)
  remaining = remaining%5

  # 1's
  i = "I" * remaining

  # adds all letters together if that letter applies
  roman = m + d + c + l + x + v + i
end







