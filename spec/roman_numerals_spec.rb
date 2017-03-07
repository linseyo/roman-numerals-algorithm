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

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end

    it 'modern true converts 4 to IV' do
      expect(convert_to_roman(4, true)).to eq "IV"
    end

    it 'modern true converts 99 to XCIX' do
      expect(convert_to_roman(99, true)).to eq "XCIX"
    end

    it 'modern true converts 1 to I' do
      expect(convert_to_roman(1, true)).to eq "I"
    end

    it 'modern true converts 999 to CMXCIX' do
      expect(convert_to_roman(999, true)).to eq "CMXCIX"
    end

  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
