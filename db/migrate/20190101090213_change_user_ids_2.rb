class ChangeUserIds2 < ActiveRecord::Migration[5.1]
  def change
  	rename_column :manages, :user_manager_id, :usermanager_id
  	rename_column :user_follows, :user_follow_id, :userfollow_id
  end
end
