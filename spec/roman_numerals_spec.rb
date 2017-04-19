require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 2 to II' do
      expect(convert_to_roman(2)).to eq "II"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    xit 'converts 3000 to MMM' do
      expect(convert_to_roman(3000)).to eq "MMM"
    end


  end

  xdescribe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
