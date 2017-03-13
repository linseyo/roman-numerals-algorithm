require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 1143 to MCXXXXIII' do
      expect(convert_to_roman(1143)).to eq "MCXXXXIII"
    end

    it 'converts 15 to XV' do
      expect(convert_to_roman(15)).to eq "XV"
    end

    it 'converts 3182 to MMMCLXXXII' do
      expect(convert_to_roman(3182)).to eq "MMMCLXXXII"
    end

    it 'converts 2578 to MMDLXXVIII' do
      expect(convert_to_roman(2578)).to eq "MMDLXXVIII"
    end

    it 'converts 1102 to MCII' do
      expect(convert_to_roman(1102)).to eq "MCII"
    end

  end

  describe 'modern Roman numerals' do
    it 'converts 1143 to MCXLIII' do
      expect(convert_to_roman(1143, true)).to eq "MCXLIII"
    end

    it 'converts 2974 to MMCMLXXIV' do
      expect(convert_to_roman(2974, true)).to eq "MMCMLXXIV"
    end
  end
end
