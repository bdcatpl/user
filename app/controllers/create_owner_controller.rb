class CreateOwnerController < ApplicationController
 def index
    list
    render('list')
  end
<<<<<<< HEAD
  
=======
<<<<<<< HEAD
  
=======
  def access_right
   @create_owners = CreateOwner.order("create_owners.username ")
  end
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
<<<<<<< HEAD
=======
=======
      #flash.now.alert = "New User Created"
      redirect_to :action => 'list' , :notice => "nwe user"
      flash.now.alert = "New User Created!!"
    else
      # If save fails, redisplay the form so user can fix problems
      redirect_to :action => 'new', :notice => "Error!!!!"
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
    end
  end
  
  def edit
    @create_owner = CreateOwner.find(params[:id])
  end
  
  def update
    # Find object using form parameters
    @create_owner = CreateOwner.find(params[:id])
    # Update the object
<<<<<<< HEAD
    if @create_owner.update_attributes(stud_params)
      # If update succeeds, redirect to the list action
      redirect_to(:action => 'list', :id => @create_owner.id)
=======
<<<<<<< HEAD
    if @create_owner.update_attributes(stud_params)
      # If update succeeds, redirect to the list action
      redirect_to(:action => 'list', :id => @create_owner.id)
=======
    if @create_owner.update_attributes(params[:create_owner])
      # If update succeeds, redirect to the list action
      redirect_to(:action => 'list', :id => @create_owner.id)
      flash.now.alert = "User Successfully updated!!"
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end
  
  def delete
<<<<<<< HEAD
    @create_owner = CreateOwner.find(params[:create_owner])
=======
<<<<<<< HEAD
    @create_owner = CreateOwner.find(params[:create_owner])
=======
    @create_owner = CreateOwner.find(params[:id])
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
  end
  
  def destroy
    CreateOwner.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
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
<<<<<<< HEAD
=======
=======

>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
 
  def logout
     session[:create_owner_id] = nil
    flash[:notice] = "You've been logged out successfully."
<<<<<<< HEAD
    redirect_to "/log-in"
=======
<<<<<<< HEAD
    redirect_to "/log-in"
=======
    redirect_to "/login"
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
  end



end
