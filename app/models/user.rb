class User < ActiveRecord::Base
  rolify
	has_many :authentications
  has_many :posts

   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :name, :profile_name



validates :profile_name, presence: true,
                           uniqueness: true,
                           format: {
                             with: /[a-zA-Z0-9_-]+/,
                             message: 'Must be formatted correctly.'
                           }

end


 

