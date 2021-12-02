require 'faker'

puts "🌱 Seeding..."

Teacher.destroy_all
Student.destroy_all
Meeting.destroy_all

slp = Teacher.create(first_name: "Mrs.", last_name: "McGonagall", specialty: "Speech Therapist", image_url: "https://i.imgur.com/Yf3NDba.jpg")
sw = Teacher.create(first_name: "Mr.", last_name: "Miyagi", specialty: "Social Worker", image_url: "https://i.imgur.com/sXGQ9HT.jpg")
psychologist = Teacher.create(first_name: "Mr.", last_name: "Feeney", specialty: "Psychologist", image_url: "https://i.imgur.com/JIZNTID.jpg")
special_education_teacher = Teacher.create(first_name: "Mr.", last_name: "Belding", specialty: "Special Education Teacher", image_url: "https://i.imgur.com/S1iRCAl.jpg")
ot = Teacher.create(first_name: "Mr.", last_name: "Lorensax", specialty: "Occupational Therapist", image_url: "https://i.imgur.com/8BDcfHc.png")

Student.create(first_name: "Ferris", last_name: "Bueller", grade: 11, image_url: "https://i.imgur.com/p2YNAsQ.jpg?1")
Student.create(first_name: "Harry", last_name: "Potter", grade: 6, image_url: "https://i.imgur.com/8c6j0DR.jpg")
Student.create(first_name: "Screech", last_name: "Powers", grade: 10, image_url: "https://i.imgur.com/0rxsKPL.jpg")
Student.create(first_name: "Cory", last_name: "Matthews", grade: 7, image_url: "https://i.imgur.com/8gYbZtx.jpg")
Student.create(first_name: "Daniel", last_name: "LaRusso", grade: 9, image_url: "https://i.imgur.com/HnrWywf.png")

150.times do 
    Meeting.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, duration: [15, 30, 45, 60].sample, notes: Faker::Lorem.paragraph(sentence_count: 5), date: Faker::Date.between(from: 1.year.ago, to: Date.today))
end


puts "✅ Done seeding!"