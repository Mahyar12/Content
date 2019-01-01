class Manage < ApplicationRecord
	belongs_to :usermanager, :class_name => 'User'
  	belongs_to :user
end
