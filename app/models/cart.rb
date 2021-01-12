class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :candles, through: :cart_candles
end
