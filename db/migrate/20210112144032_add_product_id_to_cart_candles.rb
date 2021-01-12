class AddProductIdToCartCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_candles, :product_id, :integer
  end
end
