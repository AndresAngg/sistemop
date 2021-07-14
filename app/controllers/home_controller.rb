class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @allPosts = Post.order('created_at DESC')
  end

end