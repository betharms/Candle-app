class CartCandle < ApplicationRecord
  has_many :carts
  belongs_to :candle, dependent: :destroy
end
