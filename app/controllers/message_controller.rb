class MessageController < ApplicationController
 def index
    list
    render('new')
  end
  
  def list
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def new
    @message= Message.new
  end
  
  def create
    # Instantiate a new object using form parameters
    @message = Message.new(params[:message])
    # Save the object
    if  @message.save
      MessageMailer.registration_confirmation(@message).deliver
      # If save succeeds, redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form so user can fix problems
      render "new"
    end
  end
  
  def delete
   # @message = Message.find(params[:id])
    @message = Message.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :action => 'list', notice: 'Meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  
  end
  
=begin
 def destroy
    Message.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end
=end
# private
 # def stud_params
#params.require(:message).permit(:project, :title, :start_date, :end_date, :start_time, :end_time, :minute_taker, :attendee, :place, :about_meeting, :topic, :type_o, :note, :owner)
 #  end
end
