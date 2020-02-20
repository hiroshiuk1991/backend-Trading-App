class Investor < ApplicationRecord
has_secure_password 

    has_one :portfolio 
    has_many :stocks, through: :portfolio  
    
    
end
