class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :seating_capacity
      t.string :classroom_image
      t.references :site
      t.timestamps
    end
  end
end
