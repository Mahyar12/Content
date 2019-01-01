class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.integer :role_id
      t.integer :model_id
      t.integer :access
      t.string :attrs
      t.string :model_name

      t.timestamps
    end
  end
end
