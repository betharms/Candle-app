class CartCandlesController < ApplicationController

  def destroy
  @cart_candle = CartCandle.find(params[:id])
  @cart_candle.destroy
  redirect_to cart_path(@current_cart)
  end

  def add_quantity
    @cart_candle = CartCandle.find(params[:id])
    @cart_candle.quantity += 1
    @cart_candle.save
    redirect_to cart_path(@current_cart)
  end

  def reduce_quantity
    @cart_candle = CartCandle.find(params[:id])
    if @cart_candle.quantity > 1
      @cart_candle.quantity -= 1
    end
    @cart_candle.save
    redirect_to cart_cath(@current_cart)
  end
end
