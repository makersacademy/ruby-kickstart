describe 'roman to integer numerals' do
  numerals = ['i','ii','iii','iv','v','vi','vii','viii','ix','x',
              'xi','xii','xiii','xiv','xv','xvi','xvii','xviii','xix','xx']
  numerals.each.with_index do |numeral, i|
    it "translates '#{numeral}' to '#{i+1}'" do
      allow(STDOUT).to receive(:puts)
      require './ch12-new-classes-of-objects/party_like_its_roman_to_integer_mcmxcix.rb'
      expect(roman_to_integer(numeral)).to eq i+1
    end
  end
  it "translates 'mcmxcix' to '1999'" do
    allow(STDOUT).to receive(:puts)
    require './ch12-new-classes-of-objects/party_like_its_roman_to_integer_mcmxcix.rb'
    expect(roman_to_integer('mcmxcix')).to eq 1999
  end
  it "translates 'CCCLXV' to '365'" do
    allow(STDOUT).to receive(:puts)
    require './ch12-new-classes-of-objects/party_like_its_roman_to_integer_mcmxcix.rb'
    expect(roman_to_integer('CCCLXV')).to eq 365
  end
end
  