require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do

    tests = [
      { arabic: 1, roman: 'I' },
      { arabic: 2, roman: 'II' },
      { arabic: 4, roman: 'IIII' },
      { arabic: 5, roman: 'V' },
      { arabic: 6, roman: 'VI' },
      { arabic: 10, roman: 'X' },
      { arabic: 11, roman: 'XI' },
      { arabic: 15, roman: 'XV' },
      { arabic: 20, roman: 'XX' },
      { arabic: 37, roman: 'XXXVII' },
      { arabic: 49, roman: 'XXXXVIIII' },
      { arabic: 50, roman: 'L' },
      { arabic: 78, roman: 'LXXVIII' },
      { arabic: 5432, roman: 'MMMMMCCCCXXXII' },
    ]
    tests.each do |test|
      arabic = test[:arabic]
      roman = test[:roman]
      it "converts #{arabic} to #{roman}" do
        expect(convert_to_roman(arabic)).to eq(roman)
      end
    end
  end

  xdescribe 'modern Roman numerals' do
    # Release 3 ...
    # add tests for modern roman numerals here

  end
end
