class CartCandle < ApplicationRecord
  belongs_to :candle
  belongs_to :cart
  belongs_to :order


  def total_price
    self.quantity * self.product.price
  end
end
