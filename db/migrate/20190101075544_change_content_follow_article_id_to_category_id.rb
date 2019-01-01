class ChangeContentFollowArticleIdToCategoryId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :content_follows, :article_id, :category_id
  end
end
