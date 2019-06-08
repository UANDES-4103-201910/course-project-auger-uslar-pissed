class DumpsterController < ApplicationController
  def main
      @posts = Post.where(:in_dumpster => true)
  end

  def recover
  end

  def delete
  end
end
