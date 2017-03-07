
# converts arabic numbers to old roman for V and I
def convert_to_roman(arabic_number, modern = false)
  if !modern
    # old conversion: additive solely
    roman_number = ""
    left_to_assign = arabic_number

    m_quantity = left_to_assign/1000 # handles thousands
    m_quantity.times {
      roman_number += "M"
    }
    left_to_assign -= (m_quantity * 1000)

    d_quantity = left_to_assign/500 # handles five hundreds
    d_quantity.times {
      roman_number += "D"
    }
    left_to_assign -= (d_quantity * 500)

    c_quantity = left_to_assign/100 # handles hundreds
    c_quantity.times {
      roman_number += "C"
    }
    left_to_assign -= (c_quantity * 100)

    l_quantity = left_to_assign/50 # handles fifties
    l_quantity.times {
      roman_number += "L"
    }
    left_to_assign -= (l_quantity * 50)

    x_quantity = left_to_assign/10 # handles tens
    x_quantity.times {
      roman_number += "X"
    }
    left_to_assign -= (x_quantity * 10)

    v_quantity = left_to_assign/5 # handles fives
    v_quantity.times {
      roman_number += "V"
    }
    left_to_assign -= (v_quantity * 5)

    i_quantity = left_to_assign # handles ones
    i_quantity.times {
      roman_number += "I"
    }
   else
    # modern conversion: additive & subtractive roman method
    roman_number = ""
    left_to_assign = arabic_number

    m_quantity = left_to_assign/1000 # handles thousandths place
    roman_number += 'M' * m_quantity
    left_to_assign -= (m_quantity * 1000)

    c_quantity = left_to_assign/100 # handles hundredths place
    case c_quantity
      when 0..3
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

    x_quantity = left_to_assign/10 # handles tenths place
    case x_quantity
      when 0..3
        roman_number += 'X' * x_quantity
      when 4
        roman_number += 'XL'
      when 5..8
        roman_number += 'L'
        roman_number += 'X' * (x_quantity - 5)
      when 9
        roman_number += 'XC'
    end
    left_to_assign -= (x_quantity * 10)

    i_quantity = left_to_assign # handles ones place
    case i_quantity
      when 0..3
        roman_number += 'I' * i_quantity
      when 4
        roman_number += 'IV'
      when 5..8
        roman_number += 'V'
        roman_number += 'I' * (i_quantity - 5)
      when 9
        roman_number += 'IX'
    end
  end
  roman_number
end
