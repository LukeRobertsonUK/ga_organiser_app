class CreateEnrolledUserComments < ActiveRecord::Migration
  def change
    create_table :enrolled_user_comments do |t|
      t.string :comment_text
      t.string :comment_image
      t.references :enrollment
      t.timestamps
    end
  end
end
