require './ch11-reading-and-writing/build_a_better_playlist.rb'

describe 'a better playlist' do

  before :each do
    srand(67809)
    allow(STDOUT).to receive(:puts)
  end

  it 'shuffles songs' do
    songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
    your_result = ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz', 
         'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
    his_result = ['foo/bar', 'AAA/zzzz', 'aa/ddd', 
         'aa/ccc', 'AAA/xxxx', 'aa/bbb', 'AAA/yyyy']
    result = music_shuffle(songs)
    expect(result == your_result || result == his_result).to be true
  end
end