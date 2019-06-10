class BlackListController < ApplicationController
  def main
    @users = User.where(:in_blacklist => true)
  end

  def recover
  end

  def delete
  end
end
