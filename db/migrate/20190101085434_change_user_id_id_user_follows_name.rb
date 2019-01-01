class ChangeUserIdIdUserFollowsName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :user_follows, :user_id_id, :user_id
  end
end
