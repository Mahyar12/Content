class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :address
      t.integer :article_id

      t.timestamps
    end
  end
end
