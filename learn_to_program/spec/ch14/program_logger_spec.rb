require './ch14-blocks-and-procs/program_logger.rb'

describe 'program logger' do
  it 'logs' do
    expect(STDOUT).to receive(:puts).with 'Beginning "outer block"...'
    expect(STDOUT).to receive(:puts).with 'Beginning "some little block"...'
    expect(STDOUT).to receive(:puts).with '..."some little block" finished, returning: 5'
    expect(STDOUT).to receive(:puts).with 'Beginning "yet another block"...'
    expect(STDOUT).to receive(:puts).with '..."yet another block" finished, returning: I like Thai food!'
    expect(STDOUT).to receive(:puts).with '..."outer block" finished, returning: false'

    program_log 'outer block' do
      program_log 'some little block' do
        1**1 + 2**2
      end

      program_log 'yet another block' do
        '!doof iahT ekil I'.reverse
      end

      '0' == 0
    end
  end
end
