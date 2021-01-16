class Cart < ApplicationRecord
  has_many :cart_candles, dependent: :destroy
  has_many :candles, through: :cart_candles

  def sub_total
    sum = 0
    self.cart_candles.each do |cart_candle|
      sum+= cart_candle.total_price
    end
    return sum
  end

end
