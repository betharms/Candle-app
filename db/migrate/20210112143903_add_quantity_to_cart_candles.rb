class AddQuantityToCartCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_candles, :quantity, :integer
  end
end
