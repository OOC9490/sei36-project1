class RemoveLikeAmountFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :like_amount, :integer
  end
end
