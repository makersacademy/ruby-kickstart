describe 'OrangeTree' do
  let(:ot) { OrangeTree.new }
  before do
    allow(STDOUT).to receive(:puts)
    require './ch13-creating-new-classes/orange_tree.rb'
    
    23.times do
      ot.one_year_passes
    end
  end

  it 'reports height and number of oranges' do
    expect(ot.one_year_passes).to eq 'This year your tree grew to 9.6m tall, and produced 119 oranges.'
    expect(ot.count_the_oranges).to eq 119
    expect(ot.height).to eq 9.6
    expect(ot.one_year_passes).to eq 'This year your tree grew to 10.0m tall, and produced 125 oranges.'
    expect(ot.one_year_passes).to eq 'Oh, no! The tree is too old, and has died. :('
    expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
    expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
    expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
    expect(ot.height).to eq 'A dead tree is not very tall. :('
    expect(ot.count_the_oranges).to eq 'A dead tree has no oranges. :('
    expect(ot.pick_an_orange).to eq 'A dead tree has nothing to pick. :('
  end

end