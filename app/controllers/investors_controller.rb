class InvestorsController < ApplicationController
has_one :portfolio 
has_many :stocks, through: :portfolio

end
