require './ch14-blocks-and-procs/grandfather_clock.rb'

describe 'grandfather clock' do
  it 'dongs or does whatever you put in the block' do 
    allow(Time).to receive_message_chain('new.hour') { 4 }
    expect(STDOUT).to receive(:puts).with('DONG!').exactly(4).times
    grandfather_clock do
      puts 'DONG!'
    end
  end
end