class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :fighter_id
      t.integer :game_id
      t.integer :special_id
      t.text :content
      t.integer :like_amount
      t.date :date_posted

      t.timestamps
    end
  end
end
