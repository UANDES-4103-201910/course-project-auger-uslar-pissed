class SearchController < ApplicationController

  def author
    @users = User.where("name LIKE ?", "%" + params[:q] + "%")
    @posts = Post.where("title LIKE ?", "%" + params[:q] + "%")
  end

  def post
    @posts = Post.where("title LIKE ?", "%" + params[:q] + "%")
  end

end
