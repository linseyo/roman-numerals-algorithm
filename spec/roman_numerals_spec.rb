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
    # Write tests for 5, 9, 10, 55, 101, 600, 2000

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end

    it 'converts 18 to XVIII' do
      expect(convert_to_roman(18)).to eq "XVIII"
    end

    it 'converts 55 to LV' do
      expect(convert_to_roman(55)).to eq "LV"
    end

    it 'converts 101 to CI' do
      expect(convert_to_roman(101)).to eq "CI"
    end

    it 'converts 600 to DC' do
      expect(convert_to_roman(600)).to eq "DC"
    end

    it 'converts 2000 to MM' do
      expect(convert_to_roman(2000)).to eq "MM"
    end
  end

  describe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
