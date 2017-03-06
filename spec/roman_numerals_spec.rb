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

    it 'converts 16 to XVI' do
      expect(convert_to_roman(16)).to eq "XVI"
    end

    it 'converts 66 to LXVI' do
      expect(convert_to_roman(66)).to eq "LXVI"
    end

    it 'converts 166 to CLXVI' do
      expect(convert_to_roman(166)).to eq "CLXVI"
    end

    it 'converts 666 to DCLXVI' do
      expect(convert_to_roman(666)).to eq "DCLXVI"
    end

    it 'converts 1666 to MDCLXVI' do
      expect(convert_to_roman(1666)).to eq "MDCLXVI"
    end
  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
