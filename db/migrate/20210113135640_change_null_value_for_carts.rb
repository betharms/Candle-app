class ChangeNullValueForCarts < ActiveRecord::Migration[6.0]
  def change
    change_column :carts, :cart_candles_id, :bigint, null: true, foreign_key: true
  end
end
