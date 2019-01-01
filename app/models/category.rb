class Category < ApplicationRecord
	has_many :articles_categories
	has_many :articles, :through => :articles_categories
	has_many :categories
	has_many :content_follows
	has_many :following_users, :through => :content_follows, :source => :user
end
