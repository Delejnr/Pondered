class Post < ActiveRecord::Base
	attr_accessible :body, :publish_date, :title, :user_id
	validates_presence_of :title, :body, :publish_date, :user_id
	belongs_to :user
	has_and_belongs_to_many :categories
end
