class UsersController < ApplicationController
def index 
@users=User.all
end
def show
@user=User.find(params[:id])
end
def new
@user=User.new
end

def create 
 @user=User.new(params[:user])
if @user.save
flash[:sucess]="welcome"
redirect_to user_path(@user)
else
render 'new'
end
end
def destroy
User.find(params[:id]).destroy
redirect_to users_path
end 

def edit 
@user= User.find(params[:id])
end

def update
@user = User.find(params[:id])
@user.update_attributes(params[:user])
end
end

