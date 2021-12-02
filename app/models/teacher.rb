class Teacher < ApplicationRecord
    has_many :meetings 
    has_many :students, -> { order(:id).distinct }, through: :meetings

    validates :first_name, presence: true
    validates :last_name, presence: true
end
