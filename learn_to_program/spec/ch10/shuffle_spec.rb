require './ch10-nothing-new/shuffle.rb'

describe 'shuffle' do

  let(:array){[1,2,3,4,5,6,7,8,9]}
  let(:shuffled){[3, 7, 2, 6, 9, 4, 8, 1, 5]}
  
  before :each do
    srand(67809)
    allow(STDOUT).to receive(:puts)

    allow(array).to receive(:shuffle).and_return shuffled
  end
  
  it 'maintains all the same elements' do
    expect(Set.new(shuffle(array))).to eq Set.new(shuffled) 
  end
  
  it 'creates a different order' do
    expect(shuffle(array)).not_to eq array
  end
end