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

    it 'converts 4 to IV' do
      expect(convert_to_roman(4, true)).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9, true)).to eq "IX"
    end

    it 'converts 49 to XLIX' do
      expect(convert_to_roman(49, true)).to eq "XLIX"
    end

    it 'converts 94 to XCIV' do
      expect(convert_to_roman(94, true)).to eq "XCIV"
    end

    it 'converts 144 to CXLIV' do
      expect(convert_to_roman(144, true)).to eq "CXLIV"
    end

    it 'converts 699 to DCXCIX' do
      expect(convert_to_roman(699, true)).to eq "DCXCIX"
    end

    it 'converts 1886 to MDCCCLXXXVI' do
      expect(convert_to_roman(1886, true)).to eq "MDCCCLXXXVI"
    end


  end
end
