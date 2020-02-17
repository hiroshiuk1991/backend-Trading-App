class PortfoliosController < ApplicationController

def index
    portfolio = Portfolio.all 
    render json: portfolio
end 

def show
    portfolio = Portfolio.find(paras[:id])
    render json: portfolio
end 

def create
    portfolio = Portfolio.create(portfolio_params)
    render json: cart 
end

private 

def portfolio_params
    parans.require(:portfolio).permit(:customer_id, :item_id, :item_name)
end 


end
