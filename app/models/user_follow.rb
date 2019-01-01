class UserFollow < ApplicationRecord
  belongs_to :userfollow, :class_name => 'User'
  belongs_to :user
end
