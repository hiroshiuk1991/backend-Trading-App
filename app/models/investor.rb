class Investor < ApplicationRecord

    has_secure_password 

    has_many :quiz_score


    has_one :portfolio 
    has_many :stocks, through: :portfolio  
    
    
end
