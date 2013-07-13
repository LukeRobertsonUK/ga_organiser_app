class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_image
      t.decimal :advertised_fee
      t.text :description
      t.references :course_category
      t.timestamps
    end
  end
end
