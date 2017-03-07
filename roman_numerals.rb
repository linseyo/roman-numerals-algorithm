def convert_to_roman(arabic_number)
  # 1000's
  m = "M"*(arabic_number/1000)
  remaining = arabic_number%1000

  
  d = "D"*(remaining/500)
  remaining = remaining%500

  
  c = "C"*(remaining/100)
  remaining = remaining%100

  l = "L"*(remaining/50)
  remaining = remaining%50





