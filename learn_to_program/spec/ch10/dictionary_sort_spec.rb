require './ch10-nothing-new/dictionary_sort.rb'

describe 'dictionary sort' do
  it 'sorts dictionary style' do
    words = ['can','feel','singing.','like','A','can']
    expect(dictionary_sort(words).join(' ')).to eq 'A can can feel like singing.'
  end
end