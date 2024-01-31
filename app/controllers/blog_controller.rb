class BlogController < ApplicationController
    def index
        @blogs = Blog.all 
    end
    def show 
        @one_blog = Blog.find(params[:id])
    end
    def new
        @new_blog = Blog.new
    end
    def create
        @new_blog = Blog.create(blog_params)
        if @new_blog.valid?
            redirect_to blogs_path
        end
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
