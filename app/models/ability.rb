class Ability
  include CanCan::Ability
       
  def initialize(user)
  	user ||=User.new # guest user (not logged in)
  	if user.has_role? :admin
  		can :manage, :all
  		can :access, :rails_admin
  		can :dashboard 
  end
  can :read, Post
  unless user.new_record?
  	can :create, Post
  	can :update, Post, :user_id => user.id
  	can :destroy, Post, :user_id => user.id
  end
end
end