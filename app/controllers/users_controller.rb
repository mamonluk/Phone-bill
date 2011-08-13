class UsersController < ApplicationController
  def new
  end
  
  def index
  @title ="Hello"
  @users= User.all
  end
  
  def show
    @user = User.find(params[:id])
    @bills =@user.bills
   
  end
  
  def edit
   @user = User.find(params[:id])
  
  end
  
  def update
    @user= User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to @user
  end
  
  def new
   
  end
  
  def create
    
  end

end

