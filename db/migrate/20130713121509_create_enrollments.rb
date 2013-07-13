class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :involvement
      t.decimal :fee
      t.string :grade
      t.references :user
      t.references :course
      t.timestamps
    end
  end
end
