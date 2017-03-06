require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    # Release 1 ...
    # add tests for old roman numerals here

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 7 to VII' do
      expect(convert_to_roman(7)).to eq "VII"
    end

    it 'converts 8 to VIII' do
      expect(convert_to_roman(8)).to eq "VIII"
    end

    it 'converts 13 to VVIII' do
      expect(convert_to_roman(13)).to eq "VVIII"
    end

    it 'converts 15 to VVV' do
      expect(convert_to_roman(15)).to eq "VVV"
    end

    it 'converts 16 to VVVI' do
      expect(convert_to_roman(16)).to eq "VVVI"
    end
  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
