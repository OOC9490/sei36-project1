class AddArticleTypeToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :article_type, :text
  end
end
