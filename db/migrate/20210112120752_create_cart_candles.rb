class CreateCartCandles < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_candles do |t|
      t.integer :amount
      t.references :candle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
