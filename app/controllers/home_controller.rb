class HomeController < ApplicationController
  def top
    @posts = Post.all
    @posts.count
  end
end
