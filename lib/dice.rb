class Dice

  def initialize
    @arr = []
  end

  def roll(number)
    roll = []
    number.times do
      roll << rand(1..6)
    end
    @arr += roll
    roll
  end

  def history
    @arr
  end

  def score
    @arr.sum
  end

end
