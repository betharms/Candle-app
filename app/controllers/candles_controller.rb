class CandlesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @candle = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end

end


# a user has many carts
# a cart has one user
# a cart has many cart candles
# a cart candle has one cart
# a cart candle has one candle
# a candle has many cart candles
#
