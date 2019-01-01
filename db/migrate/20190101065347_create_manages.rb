class CreateManages < ActiveRecord::Migration[5.1]
  def change
    create_table :manages do |t|
      t.integer :user_id
      t.integer :user_id_manager

      t.timestamps
    end
  end
end
