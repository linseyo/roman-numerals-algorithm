require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end
     it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end
     it 'converts 11 to XI' do
      expect(convert_to_roman(11)).to eq "XI"
    end
     it 'converts 1166 to MCLXVI' do
      expect(convert_to_roman(1166)).to eq "MCLXVI"
    end


    # Release 1 ...
    # add tests for old roman numerals here

  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
