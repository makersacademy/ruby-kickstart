require './ch10-nothing-new/english_number.rb'

describe 'english number' do
  describe 'translates numbers to english text' do

    {
      0 => 'zero', 
      9 => 'nine', 
      10 => 'ten', 
      11 => 'eleven', 
      17 => 'seventeen', 
      32 => 'thirty-two', 
      88 => 'eighty-eight', 
      99 => 'ninety-nine', 
      100 => 'one hundred', 
      101 => 'one hundred one', 
      234 => 'two hundred thirty-four', 
      3211 => 'three thousand two hundred eleven', 
      999999 => 'nine hundred ninety-nine thousand nine hundred ninety-nine', 
      1000000000000 => 'one trillion', 
      109238745102938560129834709285360238475982374561034 => 'one hundred nine quindecillion two hundred thirty-eight quattuordecillion seven hundred forty-five tredecillion one hundred two duodecillion nine hundred thirty-eight undecillion five hundred sixty decillion one hundred twenty-nine nonillion eight hundred thirty-four octillion seven hundred nine septillion two hundred eighty-five sextillion three hundred sixty quintillion two hundred thirty-eight quadrillion four hundred seventy-five trillion nine hundred eighty-two billion three hundred seventy-four million five hundred sixty-one thousand thirty-four'
    }.each do |number, english|
      it "translates #{number} to #{english}" do
        expect(english_number(number)).to eq english
      end
    end
  end
  
end