class FollowingRelationship < ActiveRecord::Base
  belongs_to :follower
  belongs_to :followeded_user
end
