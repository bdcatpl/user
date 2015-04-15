class OwnerController < ApplicationController

def create
 @owner = Owner.new(owner_params)
 if @owner.save
   flash[:notice] = "Welcome to the site!"
   redirect_to "/log-in"
 else
   flash[:alert] = "There was a problem creating your account. Please try again."
   redirect_to :back
 end
end

private
def owner_params
 params.require(:owner).permit(:email, :password, :password_confirmation)
end

end
