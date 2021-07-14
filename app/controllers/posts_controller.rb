class PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = Post.where user_id: current_user.id
    end
    
    def new
        @posts = Post.new
    end
    
    def show
      @posts= Post.find(params[:id])
    end
    
    def create
      @posts = current_user.posts.new post_params
      
        if @posts.save
          redirect_to posts_path
        else
          render :new
        end
      end

      private
      def post_params
          params.require(:post).permit(:title, :contenido)
      end
end