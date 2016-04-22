require './ch14-blocks-and-procs/even_better_profiling.rb'

describe 'even better profiling' do
  it 'displays time of an activity' do 
    expect(Time).to receive(:new).and_return(10);
    expect(Time).to receive(:new).and_return(20);
    block_description = 'test'
    $OPT_PROFILING_ON = true
    expect(STDOUT).to receive(:puts).with "#{block_description}: 10 seconds"
    profile(block_description) { 2 + 3 }
  end
end