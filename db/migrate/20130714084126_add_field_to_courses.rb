class AddFieldToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :one_liner, :string
  end
end
