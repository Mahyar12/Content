class ChangeUserIds < ActiveRecord::Migration[5.1]
  def change
  	rename_column :manages, :user_id_manager, :user_manager_id
  	rename_column :user_follows, :user_id_follow_id, :user_follow_id
  end
end
