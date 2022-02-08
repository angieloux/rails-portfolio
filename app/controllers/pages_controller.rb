class PagesController < ApplicationController

    def home 
        # Load the categories so a user can filter by category 
        @categories = Category.all
    end 

    def about
    end

    def projects
    end

    def blog 
        @blogs = Blog.all
    end

    def contact
    end 

   

end
