class DeleteUserIdFromRole < ActiveRecord::Migration[5.1]
  def change
  	remove_column :roles, :user_id
  end
end
