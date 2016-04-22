describe 'old school roman numerals' do
  numerals = ['I','II','III','IIII','V','VI','VII','VIII','VIIII','X',
              'XI','XII','XIII','XIIII','XV','XVI','XVII','XVIII','XVIIII','XX']
  numerals.each.with_index do |numeral, i|
    it "translates #{i+1} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/old_school_roman_numerals.rb'
      expect(old_roman_numeral(i+1)).to eq numeral
    end
  end
  l_numerals = ['L','LI','LII','LIII','LIIII','LV','LVI','LVII','LVIII','LVIIII',
              'LX','LXI','LXII','LXIII','LXIIII','LXV','LXVI','LXVII','LXVIII','LXVIIII']
  l_numerals.each.with_index do |numeral, i|
    it "translates #{i+50} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/old_school_roman_numerals.rb'
      expect(old_roman_numeral(i+50)).to eq numeral
    end
  end
  c_numerals = ['C','CI','CII','CIII','CIIII','CV','CVI','CVII','CVIII','CVIIII',
              'CX','CXI','CXII','CXIII','CXIIII','CXV','CXVI','CXVII','CXVIII','CXVIIII']
  c_numerals.each.with_index do |numeral, i|
    it "translates #{i+100} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/old_school_roman_numerals.rb'
      expect(old_roman_numeral(i+100)).to eq numeral
    end
  end
  d_numerals = ['D','DI','DII','DIII','DIIII','DV','DVI','DVII','DVIII','DVIIII',
              'DX','DXI','DXII','DXIII','DXIIII','DXV','DXVI','DXVII','DXVIII','DXVIIII']
  d_numerals.each.with_index do |numeral, i|
    it "translates #{i+500} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/old_school_roman_numerals.rb'
      expect(old_roman_numeral(i+500)).to eq numeral
    end
  end
  m_numerals = ['M','MI','MII','MIII','MIIII','MV','MVI','MVII','MVIII','MVIIII',
              'MX','MXI','MXII','MXIII','MXIIII','MXV','MXVI','MXVII','MXVIII','MXVIIII']
  m_numerals.each.with_index do |numeral, i|
    it "translates #{i+1000} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      require './ch09-writing-your-own-methods/old_school_roman_numerals.rb'
      expect(old_roman_numeral(i+1000)).to eq numeral
    end
  end
end