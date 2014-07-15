class FollowingRelationshipsController < ApplicationController
	def create
		user = User.find_by(username: params[:id])
		user.follow(user)
		redirect_to user_path
	end
	def destroy
		user = User.find_by(username: params[:id])
		user.unfollow(user)
		redirect_to user_path
	end
end
