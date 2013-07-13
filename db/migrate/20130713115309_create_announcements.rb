class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :announcement_text
      t.string :announcement_image
      t.references :user
      t.timestamps
    end
  end
end
