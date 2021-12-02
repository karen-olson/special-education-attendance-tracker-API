class Meeting < ApplicationRecord
    belongs_to :student 
    belongs_to :teacher 

    validates :duration, presence: true
end
