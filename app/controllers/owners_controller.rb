class OwnersController < ApplicationController
   
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:owner])
    if @owner.save
      redirect_to '/login', :notice => "Signed up!"
    else
      render "new"
    end
  end

end
