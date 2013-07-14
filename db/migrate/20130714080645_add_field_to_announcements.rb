class AddFieldToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :details, :text
  end
end
