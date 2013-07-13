class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :user_access
      t.string :address
      t.string :telephone
      t.date :birth_date
      t.text :profile
      t.string :user_image

      t.timestamps
    end
  end
end
