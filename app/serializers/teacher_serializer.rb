class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :image_url

  has_many :students
end
