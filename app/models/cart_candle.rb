class CartCandle < ApplicationRecord
  belongs_to :candle
  belongs_to :cart
  belongd_to :order
end
