require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    conversions = [ { latin: 1, arabic: "I"},
                    { latin: 4, arabic: "IIII"},
                    { latin: 15, arabic: "XV"},
                    { latin: 1102, arabic: "MCII"},
                    { latin: 1143, arabic: "MCXXXXIII"},
                    { latin: 2578, arabic: "MMDLXXVIII"},
                    { latin: 3182, arabic: "MMMCLXXXII"} ]

    conversions.each do |conversion|
      it "converts #{conversion[:latin]} to #{conversion[:arabic]}" do
        expect(convert_to_roman(conversion[:latin])).to eq conversion[:arabic]
      end
    end
  end

  describe 'modern Roman numerals' do
    conversions = [ { latin: 1, arabic: "I"},
                    { latin: 4, arabic: "IV"},
                    { latin: 15, arabic: "XV"},
                    { latin: 40, arabic: "XL"},
                    { latin: 1143, arabic: "MCXLIII"},
                    { latin: 2974, arabic: "MMCMLXXIV"} ]

    conversions.each do |conversion|
      it "converts #{conversion[:latin]} to #{conversion[:arabic]}" do
        expect(convert_to_roman(conversion[:latin], true)).to eq conversion[:arabic]
      end
    end
  end
end
