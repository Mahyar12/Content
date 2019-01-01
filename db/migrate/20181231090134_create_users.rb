class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :phone_number
      t.string :country
      t.string :province
      t.string :city
      t.string :email
      t.string :username
      t.text :description
      t.text :address

      t.timestamps
    end
  end
end
