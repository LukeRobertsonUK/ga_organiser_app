class AddSiteToCourse < ActiveRecord::Migration
  def change
     add_column :courses, :site_id, :integer
  end
end
