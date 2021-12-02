class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.integer :duration
      t.text :notes
      t.datetime :date

      t.timestamps
    end
  end
end
