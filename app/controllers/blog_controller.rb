class BlogController < ApplicationController
    before_action :authenticate_user!
    before_action :set_blog, only: [:edit, :update, :destroy]
    before_action :set_categories, only: [:new, :edit]

    def new
        @blog = Blog.new
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
    params.require(:blog).permit(:title, :content, :category_id)
    end

    def set_blog
        @blog = Blog.find(params[:id])
    end
end
