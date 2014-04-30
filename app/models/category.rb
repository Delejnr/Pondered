class Category < ActiveRecord::Base
	attr_accessible :name
	validates_presence_of :name
	has_and_belongs_to_many :posts

     rails_admin do
	 configure :Category do
end
end
end