class Cart < ApplicationRecord
  has_many :users
  belongs_to :cart_candles
end
