class AddAbstractToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :abstract, :text
  end
end
