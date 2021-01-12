class AddCartIdToCartCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_candles, :cart_id, :integer
  end
end
