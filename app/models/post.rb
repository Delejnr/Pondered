class Post < ActiveRecord::Base
	attr_accessible :body, :publish_date, :title, :category_ids
	validates_presence_of :title, :body, :publish_date, :user_id
	belongs_to :user
	has_and_belongs_to_many :categories
    scope :published, lambda { where(['publish_date <= ?', Date.today]) }
    scope :by_user_id, lambda {|uid| where(:user_id => uid)}
    scope :by_category_id, lambda {|cid| joins(:categories).where(['categories.id =?',cid])} 

	searchable do
  text :name, :boost => 5
  text :content, :publish_month
  text :comments do
    comments.map(&:content)
  end
  time :published_at
  string :publish_month
end

def publish_month
  published_at.strftime("%B %Y")
end
end
end