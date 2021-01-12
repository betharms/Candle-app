class AddOrderIdToCartCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_candles, :order_id, :integer
  end
end
