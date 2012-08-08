class MicropostsController < ApplicationController
def index 
@posts=Micropost.all
end
def show
@post=Micropost.find(params[:id])
end
def new
@post=Micropost.new
end

def create 
@post=Micropost.create!(params[:post])
end

def destroy
Micropost.find(params[:id]).destroy
end 

def edit 
@post= Micropost.find(params[:id])
end

def update
@post = Micropost.find(params[:id])
@post.update_attributes(params[:post])
end
end

