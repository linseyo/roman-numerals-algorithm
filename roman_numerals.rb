def convert_to_roman(arabic_number)
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
