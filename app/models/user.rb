class User < ActiveRecord::Base

  has_many :shouts	
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  #set up for following relationships

  has_many :followed_user_relationships,
  			class_name: "FollowingRelationship", 
  			foreign_key: :follower_id

  has_many :followed_users, through: :followed_user_relationships

   has_many :followers_relationships,
        class_name: "FollowingRelationship", 
        foreign_key: :followed_user_id

  has_many :followers, through: :followers_relationships

  def to_param  #overrides default so we could look to username's directly instead of id number
  	username
  end
  
  def follow(user)
    followed_users << user
  end

  def unfollow(user)
    followed_users.delete(user)
  end
  
  def following?(user)
    followed_users.include?(user)
  end



end
