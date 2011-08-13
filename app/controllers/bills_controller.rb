class BillsController < ApplicationController
  
def new
  @bill=Bill.new
  @user=User.new
  
end



def create
  #@bill= Bill.create!(params[:bill])
  #redirect_to users_path
  
  @user_name=(params[:name])
  @user=User.find_by_name(@user_name.capitalize)
  if @user==nil
    @user=User.create!(:name =>params[:name])
    @user.bills.create!(:month =>params[:month], :amount =>params[:amount],
                        :paid =>params[:paid], :year => params[:year], :last_paid =>params[:last_paid])
  else
    @user.bills.create!(:month =>params[:month], :amount =>params[:amount],
                      :paid =>params[:paid], :last_paid =>params[:last_paid], :year => params[:year])
  end
                      
  redirect_to user_path(@user)
  
  
end

 
end
