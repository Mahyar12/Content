class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable #, :validatable
  has_many :followers, :class_name => 'UserFollow', :foreign_key => 'user_id'
  has_many :following, :class_name => 'UserFollow', :foreign_key => 'userfollow_id'
  has_many :users, :class_name => 'Manage', :foreign_key => 'user_id'
  has_many :managers, :class_name => 'Manage', :foreign_key => :usermanager_id
  has_many :articles
  has_many :roles_users
  has_many :roles, :through => :roles_users  
  has_many :content_follows
  has_many :followed_categories, :through => :content_follows, :source => :category
  has_many :comments
end
