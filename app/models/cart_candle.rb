class CartCandle < ApplicationRecord
  belongs_to :candle, dependent: :destroy
end
