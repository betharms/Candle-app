class CandlesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @candle = Candle.all
  end

  def new
    @candle = Candle.new
  end

  def create
    @candle = Candle.create(candle_params)
    redirect_to candles_path
  end

   def edit
    @candle = Candle.find(params[:id])
   end

   def update
    @candle = Candle.find(params[:id])
    @candle.update(candle_params)
    redirect_to candles_path
   end

   def destroy
    @candle = Candle.find(params[:id])
    @candle.destroy
    redirect_to candles_path
   end

   private
    def candle_params
    params.require(:candle).permit(:name, :price)
   end

  # def show
  #   @candle = Candle.find(params[:id])
  # end

end
# a user has many carts
# a cart has one user
# a cart has many cart candles
# a cart candle has one cart
# a cart candle has one candle
# a candle has many cart candles
#
