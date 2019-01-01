json.extract! user, :id, :first_name, :last_name, :image, :phone_number, :country, :province, :city, :email, :username, :description, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
