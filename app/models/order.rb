class Order < ApplicationRecord
  has_many :cart_candles, dependent: :destroy

  def create
    @order = Order.new(order_params)
    @current_cart.cart_candles. each do |item|
      @order.cart_candles << item
      item.cart_id = nil
    end
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, :address, :pay_method)
  end
end

