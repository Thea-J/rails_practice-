#Define the Posts controller that inherits from application controller
class PostsController < ApplicationController
    #Controller actions:
    #Index - GET & Reads all the instances of the Post model
    #Renders views/posts/index.html.erb
    def index
        @posts = Post.all
    end

    
    #New - GET the form for creating a new posts
    #Note: @post argument in form_for cannot be nil
    #Renders views/posts/new.html.erb
    def new
        @post = Post.new
    end
    
    #Create - POST data inputed in the new.html.erb form & Creates a new post
    #Redirects to the new instances show page
    def create
        @post.create(params)
        if @post.valid?
            redirect_to post_path(@post)
        else
            redirect_to new_post_path()
        end
    end
    
    #Show - GET & Reads a specific instance of the Post model
    #Renders views/posts/show.html.erb
    def show
        @post = Post.find(params[:id])       
    end

    #Edit - GET the form for updating an existing post
    #Note: @post argument in form_for cannot be nil
    #Renders views/posts/edit.html.erb
    def edit
        @post = Post.find(params[:id])
    end

    #Update - PATCH & Updates an existing instance of the Post model
    #Redirects to the updated instances show page
    def update 
        @post = Post.find(params[:id])
        @post.update(params)
        if @post.valid?
            redirect_to post_path(@post)
        else 
            redirect_to edit_post_path()
        end
    end

    #Destroy - Deletes a specific instance of the Post model
    #Redirects to the index page
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end
end