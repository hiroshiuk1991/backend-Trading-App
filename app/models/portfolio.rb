class Portfolio < ApplicationRecord

    belongs_to :investor
    has_many :stocks
    
end
