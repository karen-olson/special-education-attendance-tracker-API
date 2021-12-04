class Meeting < ApplicationRecord
    belongs_to :student 
    belongs_to :teacher 

    validates :duration, presence: true
    validates :date, presence: :true

    def self.teacher_student_meetings(teacher_id, student_id)
        meetings = self.where(["teacher_id = ? and student_id = ?", teacher_id, student_id]).order('date DESC')
    end

    def formatted_date
        self.date.strftime("%b %d, %Y")
    end
end
