class CreateOwnerController < ApplicationController
 def index
    list
    render('list')
  end
  
  def list
    @create_owners = CreateOwner.order("create_owners.id ASC")
  end
  
  def show
    @create_owner = CreateOwner.find(params[:id])
  end
  
  def new
    @create_owner = CreateOwner.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @create_owner = CreateOwner.new(params[:create_owner])
    # Save the object
    if  @create_owner.save
      # If save succeeds, redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  
  def edit
    @create_owner = CreateOwner.find(params[:id])
  end
  
  def update
    # Find object using form parameters
    @create_owner = CreateOwner.find(params[:id])
    # Update the object
    if @create_owner.update_attributes(stud_params)
      # If update succeeds, redirect to the list action
      redirect_to(:action => 'list', :id => @create_owner.id)
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end
  
  def delete
    @create_owner = CreateOwner.find(params[:create_owner])
  end
  
  def destroy
    CreateOwner.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end

 # def upload
  #uploaded_io = params[:create_owner][:image]
 # File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  #  file.write(uploaded_io.read)
 # end
#end
   #private
  #def stud_params
      # params.require(:create_owner).permit(:name, :floor, :block, :flat_number, :business_name, :username, :password, :image, :carpet_area, :builtup_area, :mezzanine, :water_connection, :electricity, :ownership, :month_from, :month_to, :per_month_rent)
  # end
 
  def logout
     session[:create_owner_id] = nil
    flash[:notice] = "You've been logged out successfully."
    redirect_to "/log-in"
  end



end
