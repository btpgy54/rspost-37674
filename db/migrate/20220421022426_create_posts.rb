class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date :date, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.integer :club_id, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
