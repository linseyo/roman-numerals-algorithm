def convert_to_roman(arabic_number, modern = false)


  output_number = arabic_number
  roman_string = ""

    m_letter = output_number/1000
    roman_string += "M" * m_letter
    remainder = output_number - (m_letter * 1000)
    if modern == true
      m_letter = output_number/900
      roman_string += "CM" * m_letter
      remainder = output_number - (m_letter * 900)
    end

    d_letter = remainder/500
    remainder = remainder - (d_letter * 500)
    roman_string += "D" * d_letter
    if modern == true
      d_letter = remainder/400
      remainder = remainder - (d_letter * 400)
      roman_string += "CD" * d_letter
    end

    c_letter = remainder/100
    remainder = remainder - (c_letter * 100)
    roman_string += "C" * c_letter
    if modern == true
      c_letter = remainder/90
      remainder = remainder - (c_letter * 90)
      roman_string += "XC" * c_letter
    end

    l_letter = remainder/50
    remainder = remainder - (l_letter * 50)
    roman_string += "L" * l_letter
    if modern == true
      l_letter = remainder/40
      remainder = remainder - (l_letter * 40)
      roman_string += "XL" * l_letter
    end

    x_letter = remainder/10
    remainder = remainder - (x_letter * 10)
    roman_string += "X" * x_letter
    if modern == true
      x_letter = remainder/9
      remainder = remainder - (x_letter * 9)
      roman_string += "IX" * x_letter
    end

    v_letter = remainder/5
    remainder = remainder - (v_letter * 5)
    roman_string += "V" * v_letter
    if modern == true
      v_letter = remainder/4
      remainder = remainder - (v_letter * 4)
      roman_string += "IV" * v_letter
    end

    i_letter = remainder/1
    remainder = remainder - (i_letter * 1)
    roman_string += "I" * i_letter


end
