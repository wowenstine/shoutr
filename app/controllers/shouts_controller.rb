class ShoutsController < ApplicationController

def create
    current_user.shouts.create(shout_params)
    redirect_to dashboard_path
end


def index
	@shouts = Shout.all
end

def destroy
end

private

def shout_params
params.require(:shout).permit(:body)
end

end
