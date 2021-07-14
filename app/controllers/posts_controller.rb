class PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = Post.all     
    end
    
    def new
        @posts = Post.new
    end
    
    def show
      @posts= Post.find(params[:id])
    end
    
    def create
        @posts = Post.new(product_p)
        if @posts.save
          redirect_to posts_path
        else
          render :new
        end
      end

      private
      def product_p
          params.require(:post).permit(:title, :contenido)
      end
end