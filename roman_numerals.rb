
# converts arabic numbers to old roman for V and I
def convert_to_roman(arabic_number, modern = false)
 if !modern
  # old conversion
  roman_number = ""
  left_to_assign = arabic_number

  m_quantity = left_to_assign/1000
  m_quantity.times {
    roman_number += "M"
  }
  left_to_assign -= (m_quantity * 1000)

  d_quantity = left_to_assign/500
  d_quantity.times {
    roman_number += "D"
  }
  left_to_assign -= (d_quantity * 500)

  c_quantity = left_to_assign/100
  c_quantity.times {
    roman_number += "C"
  }
  left_to_assign -= (c_quantity * 100)

  l_quantity = left_to_assign/50
  l_quantity.times {
    roman_number += "L"
  }
  left_to_assign -= (l_quantity * 50)

  x_quantity = left_to_assign/10
  x_quantity.times {
    roman_number += "X"
  }
  left_to_assign -= (x_quantity * 10)

  v_quantity = left_to_assign/5
  v_quantity.times {
    roman_number += "V"
  }
  left_to_assign -= (v_quantity * 5)

  i_quantity = left_to_assign
  i_quantity.times {
    roman_number += "I"
  }
 else
  # modern conversion
  roman_number = ""
  left_to_assign = arabic_number

  m_quantity = left_to_assign/1000
  roman_number += 'M' * m_quantity
  left_to_assign -= (m_quantity * 1000)

  c_quantity = left_to_assign/100
  case c_quantity
    when 1..3
      roman_number += 'C' * c_quantity
    when 4
      roman_number += 'CD'
    when 5..8
      roman_number += 'D'
      roman_number += 'C' * (c_quantity - 5)
    when 9
      roman_number += 'CM'
  end
  left_to_assign -= (c_quantity * 100)

 end
roman_number
end
