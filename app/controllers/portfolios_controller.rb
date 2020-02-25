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
    params.require(:portfolio).permit()
end 


end
