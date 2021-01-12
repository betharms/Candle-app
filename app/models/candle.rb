class Candle < ApplicationRecord
  has_many :cart_candles, dependent: :destroy
end
