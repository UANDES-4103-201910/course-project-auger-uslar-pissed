class SearchController < ApplicationController
  def author
    @user = User.where(:name => "" || :lastname => "")
  end

  def post
  end
end
