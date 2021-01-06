class AddPriceToCandles < ActiveRecord::Migration[6.0]
  def change
    add_column :candles, :price, :decimal, :precision => 8, :scale => 2
  end
end
