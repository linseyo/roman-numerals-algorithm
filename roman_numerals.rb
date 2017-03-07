def helper(arabic_number)
  holder = arabic_number.to_s.split('')
  counter = 0
  roman = ""
  while counter < holder.length
    temp = holder[counter].to_i
    place_value = (holder.length - counter).to_s
    case place_value
    when '4'
        temp.times {
       roman += "M"
      }
    when '3'
      if temp >= 5
        roman += 'D'
        temp = temp - 5
        if temp > 0
          temp.times {
       roman += "C"
      }
        end

    else
       temp.times {
       roman += "C"
      }
    end
    when '2'
      if temp >= 5
        roman += 'L'
        temp = temp - 5
        if temp > 0
           temp.times {
       roman += "X"
      }
        end

    else  temp.times {
       roman += "X"
      }
    end
  when '1'
    if temp >= 5
      roman += "V"
      temp = temp -5
      if temp > 0
       temp.times {
       roman += "I"
      }

      end
    else
       temp.times {
       roman += "I"
      }
    end

  end
  counter += 1
end
return roman
end

def convert_to_roman(arabic_number,boo = false)
  new_roman = helper(arabic_number)
  if boo == false
     return new_roman
  else
    holder = arabic_number.to_s.split('')
  counter = 0
  roman = ""
  while counter < holder.length
    temp = holder[counter].to_i
    place_value = (holder.length - counter).to_s
    case place_value
    when '4'
        temp.times {
       roman += "M"
      }
    when '3'
      if temp >= 5 && temp != 9
        roman += 'D'
        temp = temp - 5
        if temp > 0
          temp.times {
       roman += "C"
      }
      end
    elsif temp == 9
      roman += "CM"

    else
      if temp == 4
        roman += "CD"
      else
       temp.times {
       roman += "C"
      }
    end
    end
    when '2'
      if temp >= 5 && temp != 9
        roman += 'L'
        temp = temp - 5
        if temp > 0
           temp.times {
       roman += "X"
      }
        end
      elsif temp == 9
        roman += "XC"

    else
      if temp == 4
        roman += "XL"
        else
          temp.times {
       roman += "X"
      }
    end
    end
  when '1'
    if temp >= 5 && temp != 9
      roman += "V"
      temp = temp -5
      if temp > 0
       temp.times {
       roman += "I"
      }
    end
    elsif temp == 9
      roman += "IX"


    else
      if temp == 4
        roman += "IV"
      else
       temp.times {
       roman += "I"
      }
    end
    end

  end
  counter += 1
end
return roman

end
end
