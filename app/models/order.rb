class Order < ApplicationRecord
  has_many :cart_candles, dependent: :destroy
end
