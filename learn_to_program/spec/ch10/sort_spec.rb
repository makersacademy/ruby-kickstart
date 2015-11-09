require './ch10-nothing-new/sort.rb'

describe 'sort' do
  it 'sorts' do
    allow(STDOUT).to receive(:puts)
    expect(sort(['can','feel','singing','like','a','can'])).to eq ['a', 'can', 'can', 'feel', 'like', 'singing']
  end
end