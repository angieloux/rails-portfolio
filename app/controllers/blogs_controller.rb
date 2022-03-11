class BlogsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_blog, only: [:edit, :show, :update, :destroy]
    before_action :set_categories, only: [:new, :edit]

    def index 
        @blogs = Blog.all
    end 

    def new
       @blog = Blog.new
    end

    def show

    end
    
    def create 
        @blog = Blog.new(blog_params)
        if @blog.save 
            pp "********************************"
            pp "created blog #{@blog}"
            redirect_to blog_path
        else 
            pp @blog.errors.full_messages
            render 'new'
        end
    end 

    def edit
        @blog = Blog.edit(blog_params)
        if @blog.edit
        end
    end
    
    def update
    end

    def destroy
    end

    private

    def set_categories
        @categories = Category.all
    end

    def blog_params
    params.require(:blog).permit(:title, :content, :category_id, :image)
    end

    def set_blog
        @blog = Blog.find(params[:id])
    end
end
