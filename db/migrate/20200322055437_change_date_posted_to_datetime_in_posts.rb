class ChangeDatePostedToDatetimeInPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :date_posted, :datetime
  end
end
