class StocksController < ApplicationController

def index
    stocks = Stock.all
    render json: stocks
end 

def show
    stock = Stock.find(paras[:id])
end


end
