class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :lesson_date
      t.string :time_slot
      t.references :course
      t.references :classroom
      t.timestamps
    end
  end
end
