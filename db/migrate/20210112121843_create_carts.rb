class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.string :status
      t.references :cart_candles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
