class RemoveAmountFromCartCandles < ActiveRecord::Migration[6.0]
  def change
    remove_column :cart_candles, :amount, :integer
  end
end
