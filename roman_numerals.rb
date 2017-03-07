

# def convert_to_roman(arabic_number)
#    = arabic_number.to_s.length
#   quotient = arabic_number
#   remainder = arabic_number%
#   "I" * remainder
# end
def convert_to_roman(arabic_number, modern = false)
  conversion_table = [
  {1=>"I", 4=>"IV", 5=>"V", 9=>"IX"},
  {1=>"X", 4=>"XL", 5=>"L", 9=>"XC"},
  {1=>"C", 4=>"CD", 5=>"D", 9=>"CM"},
  {1=>"M"}
]
  result = ""
  digits = arabic_number.to_s.split("")
  digits.each.with_index do |digit, index|
    if digit.to_i < 5
      result += mroman(((conversion_table[(digits.length - index)-1][1]) * digit.to_i), modern)
    elsif digit.to_i == 5
      result += mroman((conversion_table[(digits.length - index)-1][5]), modern)
    else
      result += mroman(((conversion_table[(digits.length - index)-1][5]) +
        ((conversion_table[(digits.length - index)-1][1]) * (digit.to_i%5))), modern)
    end
  end
  result
end

# Pseudocode
def mroman(old_roman, modern)
  if modern == true
    case old_roman
      when "IIII"
      old_roman = "IV"
      when "VIIII"
      old_roman = "IX"
      when "XXXX"
      old_roman = "XL"
      when "LXXXX"
      old_roman = "XC"
      when "CCCC"
      old_roman = "CD"
      when "DCCCC"
      old_roman = "CM"
    end
  end
old_roman
end



# #def check_five(arabic_number)
#   case arabic_number
#   when arabic_number<5
#   when 5
#   when 5<arabic_number && arabic_number<10
#   when 10
#   when 10<arabic_number && arabic_number<50
#   when 50
#   when 50<arabic_number && arabic_number<100
#   when 100
#   when 100<arabic_number && arabic_number<500
#   when 500
#   when 500<arabic_number && arabic_number<1000
#   when 1000
#   when 1000<arabic_number
#   end
# #end
# Driver Code
# p convert(137, conversion_table)
# p convert(1092, conversion_table)
# p convert(9, conversion_table)
# p convert(555, conversion_table)
p convert_to_roman(4, true)
p convert_to_roman(99, true)
p convert_to_roman(99)
