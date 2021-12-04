class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :teacher_id, :student_id, :duration, :notes, :date
  # , :formatted_date
end
