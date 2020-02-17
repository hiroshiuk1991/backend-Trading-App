class Stock < ApplicationRecord
    belongs_to :portfolio 
    has_many :investors, through: :portfolio 

end
