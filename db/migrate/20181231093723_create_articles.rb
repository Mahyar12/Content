class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
