class DashboardsController < ApplicationController
  before_action :require_login 

  def show
  	@shout = Shout.new
  	@shouts = current_user.shouts
  end
end