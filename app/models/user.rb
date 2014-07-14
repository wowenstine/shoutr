class User < ActiveRecord::Base

  has_many :shouts	
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def to_param  #overrides default so we could look to username's directly instead of id number
  	username
  end

end
