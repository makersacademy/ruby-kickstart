describe 'roman numerals' do
  numerals = ['I','II','III','IV','V','VI','VII','VIII','IX','X',
              'XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX']
  numerals.each.with_index do |numeral, i|
    it "translates #{i+1} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/roman_numerals.rb'
      expect(roman_numeral(i+1)).to eq numeral
    end
  end
  l_numerals = ['L','LI','LII','LIII','LIV','LV','LVI','LVII','LVIII','LIX',
              'LX','LXI','LXII','LXIII','LXIV','LXV','LXVI','LXVII','LXVIII','LXIX']
  l_numerals.each.with_index do |numeral, i|
    it "translates #{i+50} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/roman_numerals.rb'
      expect(roman_numeral(i+50)).to eq numeral
    end
  end
  c_numerals = ['C','CI','CII','CIII','CIV','CV','CVI','CVII','CVIII','CIX',
              'CX','CXI','CXII','CXIII','CXIV','CXV','CXVI','CXVII','CXVIII','CXIX']
  c_numerals.each.with_index do |numeral, i|
    it "translates #{i+100} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/roman_numerals.rb'
      expect(roman_numeral(i+100)).to eq numeral
    end
  end
  d_numerals = ['D','DI','DII','DIII','DIV','DV','DVI','DVII','DVIII','DIX',
              'DX','DXI','DXII','DXIII','DXIV','DXV','DXVI','DXVII','DXVIII','DXIX']
  d_numerals.each.with_index do |numeral, i|
    it "translates #{i+500} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/roman_numerals.rb'
      expect(roman_numeral(i+500)).to eq numeral
    end
  end
  m_numerals = ['M','MI','MII','MIII','MIV','MV','MVI','MVII','MVIII','MIX',
              'MX','MXI','MXII','MXIII','MXIV','MXV','MXVI','MXVII','MXVIII','MXIX']
  m_numerals.each.with_index do |numeral, i|
    it "translates #{i+1000} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/roman_numerals.rb'
      expect(roman_numeral(i+1000)).to eq numeral
    end
  end
end