class AddLikedOnToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :liked_on, :datetime
  end
end
