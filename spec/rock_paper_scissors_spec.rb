require('rock_paper_scissors')
require('rspec')

describe("#rock_paper_scissors") do
  it("should return true when rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to eq(true)
  end
  it("should return true when paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to eq(true)
  end

  it("should return true when scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to eq(true)
  end

  it("should return false when rock is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to eq(false)
  end

  it("should return false when paper is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "scissors")).to eq(false)
  end

  it("should return false when scissors is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to eq(false)
  end
end
