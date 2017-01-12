class CoinChanger
  COINS = [20, 10, 5, 2, 1]
  def change_coin(money)
    change = []
    COINS.each do |coin|
      while money >= coin do
        change << coin
        money -= coin
      end
    end
    change
  end
end
