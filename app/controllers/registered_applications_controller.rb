class RegisteredApplicationsController < ApplicationController
  def index
    @registeredapplications = RegisteredApplication.all
  end

  def show
    @registeredapplication = RegisteredApplication.find (params[:id])
  end

  def new
    @registeredapplication = RegisteredApplication.new
  end

  def edit
    @registeredapplication = RegisteredApplication.find(params[:id])
  end

  def create 
   @registeredapplication = RegisteredApplication.new(params.require(:registeredapplication).permit(:name, :url))
   if @registeredapplication.save
    flash[:notice] = "Your masterpiece was saved."
    redirect_to @registeredapplication
   else 
    flash[:error] = "Oops there was an error saving, please try save again."
    render :new
   end 
  end 

  def update 
    @registeredapplication = RegisteredApplication.find(params[:id])
     if @registeredapplication.update_attributes(params.require(:registeredapplication).permit(:name, :url))
       flash[:notice] = "Post was updated."
       redirect_to @registeredapplication
     else
       flash[:error] = "There was an error saving the application. Please try again."
       render :edit
  end 
end 

  def read
  end

  def destroy
  end
end
