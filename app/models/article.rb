class Article < ApplicationRecord
	belongs_to :user
	has_many :images
	has_many :videos
	has_many :articles_categories
	has_many :categories, :through => :articles_categories
	has_many :articles_tags
	has_many :tags, :through => :articles_tags
	has_many :comments
end
