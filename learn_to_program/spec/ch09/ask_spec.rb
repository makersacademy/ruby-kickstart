describe 'ask' do
  before do
    stub(:puts).with('anything')
    stub(:puts).with('Please answer "yes" or "no".')
    stub(:gets).and_return 'yes'
    allow_any_instance_of(Kernel).to receive(:gets).and_return 'yes'
    require './ch09-writing-your-own-methods/ask.rb'
  end
  it 'returns true when you say yes' do
    expect(ask('anything')).to be true
  end
  it 'returns false when you say no' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return 'no'
    expect(ask('anything')).to be false
  end
end