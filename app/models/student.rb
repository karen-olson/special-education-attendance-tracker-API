class Student < ApplicationRecord
    has_many :meetings 
    has_many :teachers, through: :meetings

    validates :first_name, presence: true
    validates :last_name, presence: true
end
