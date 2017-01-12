require_relative("CoinChanger")

RSpec.describe CoinChanger do
  it "returns 1p when given 1p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(1)).to match_array([1])
  end

  it "returns 2p when given 2p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(2)).to match_array([2])
  end

  it "returns two 2ps when given 4p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(4)).to match_array([2, 2])
  end

  it "returns 5p when given 5p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(5)).to match_array([5])
  end

  it "returns 5p and 2p when given 7p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(7)).to match_array([2, 5])
  end

  it "returns 5p and 2p when given 7p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(7)).to match_array([2, 5])
  end

  it "returns 10p and 5p when given 15p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(15)).to match_array([5, 10])
  end

  it "returns 20p when given 20p" do
    coinChanger = CoinChanger.new
    expect(coinChanger.change_coin(20)).to match_array([20])
  end
end
