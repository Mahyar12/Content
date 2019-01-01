class ChangeModelNameInPermission < ActiveRecord::Migration[5.1]
  def change
  	rename_column :permissions, :model_name, :concept_name
  	remove_column :permissions, :model_id
  end
end
