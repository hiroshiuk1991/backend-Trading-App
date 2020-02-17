class PortfoliosController < ApplicationController
belongs_to :investor
has_many :stocks

end
