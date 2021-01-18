class CartCandle < ApplicationRecord
  belongs_to :candle
  belongs_to :cart
  belongs_to :order


  def total_price
    self.quantity * self.product.price
  end

  def create
  # Find associated product and current cart
  chosen_product = Candle.find(params[:candle_id])
  current_cart = @current_cart

  # If cart already has this product then find the relevant cart_candle and iterate quantity otherwise create a new cart_candle for this product
  if current_cart.candles.include?(chosen_product)
    # Find the cart_candle with the chosen_product
    @cart_candle = current_cart.cart_candles.find_by(:candle_id => chosen_product)
    # Iterate the cart_candle's quantity by one
    @cart_candle.quantity += 1
  else
    @cart_candle = CartCandle.new
    @cart_candle.cart = current_cart
    @cart_candle.candle = chosen_product
  end

  # Save and redirect to cart show path
  @cart_candle.save
  redirect_to cart_path(current_cart)
end

private
  def cart_candle_params
    params.require(:cart_candle).permit(:quantity,:candle_id, :cart_id)
  end
end
