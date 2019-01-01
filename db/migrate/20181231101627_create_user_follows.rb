class CreateUserFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :user_follows do |t|
      t.references :user_id_follow
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
