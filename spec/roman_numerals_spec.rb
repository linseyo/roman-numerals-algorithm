require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  context 'modern false' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 6 to VI' do
      expect(convert_to_roman(6)).to eq "VI"
    end

    it 'converts 10 to X' do
      expect(convert_to_roman(10)).to eq "X"
    end
  end

  context 'modern true' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1, true)).to eq "I"
    end

    it 'converts 4 to IV' do
      expect(convert_to_roman(4, true)).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9, true)).to eq "IX"
    end    

    it 'converts 99 to XCIX' do
      expect(convert_to_roman(99, true)).to eq "XCIX"
    end

    it 'converts 999 to CMXCIX' do
      expect(convert_to_roman(999, true)).to eq "CMXCIX"
    end
  end
end
