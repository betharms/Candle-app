class CandlesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @candle = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end

end
