require 'dice'

describe Dice do
  it 'rolls the dice' do
    expect(subject.roll(1).first).to be_between(1, 6)
  end
  it 'can respond to roll with 1 argument' do
    expect(subject).to respond_to(:roll).with(1).argument
  end
  it 'rolls multiple dice and returns array of scores' do
    expect(subject.roll(2).length).to eq 2
  end
  it 'can keep track of dice roll history' do
    subject.roll(3)
    subject.roll(4)
    expect(subject.history.length).to eq 7
  end
  it 'can respond to the method score with the sum of all rolls' do
    num = rand(1..6)
    subject.roll(num)
    expect(subject.score).to be_between(num*1, num*6)
  end
end
