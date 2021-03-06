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

    it 'converts 500 to D' do
    expect(convert_to_roman(500)).to eq "D"
    end
  end

  describe 'modern Roman numerals' do
  # Release 3 ...
  # add tests for modern roman numerals here

  it 'converts 1 to I' do
    expect(convert_to_roman(1, true)).to eq "I"
  end

  it 'converts 4 to IV' do
    expect(convert_to_roman(4, true)).to eq "IV"
  end
end



end
