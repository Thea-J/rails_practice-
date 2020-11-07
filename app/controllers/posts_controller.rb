#Define the Posts controller that inherits from application controller
class PostsController < ApplicationController
    #Controller actions:
    #Index - Gets & Reads all the instances of the Post model
    def index
        @posts = Post.all
    end

    #Show - Gets & Reads a specific instance of the Post model
    def show
        @post = Post.find(params[:id])       
    end

    #New - Gets the form for creating a new posts
    def new
        @post = Post.new
    end

    #Create - Posts & Creates a new post
    #Edit - Gets the form for updating an existing post
    #Update - Patch & Updates an existing instance of the Post model
    #Destroy - Deletes a specific instance of the Post model
end