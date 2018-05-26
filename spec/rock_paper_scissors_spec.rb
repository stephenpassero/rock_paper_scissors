require('rock_paper_scissors')
require('rspec')

describe("#rock_paper_scissors") do
  it("should return true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to eq(true)
  end
  it("should return true if paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to eq(true)
  end

  it("should return true if scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to eq(true)
  end

end
