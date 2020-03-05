class Investor < ApplicationRecord
validates :name, presence: true
validates :password, length: { in: 6..20 }
    has_secure_password

    has_many :quiz_score

    has_one :portfolio 
    has_many :stocks, through: :portfolio  
    
    
end
