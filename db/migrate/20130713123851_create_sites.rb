class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :site_image
      t.text :directions

      t.timestamps
    end
  end
end
