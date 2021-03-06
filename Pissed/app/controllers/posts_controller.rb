class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments.where(comment:nil)
    @comment = Comment.new
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  def comment_distance(comment,n)
    if comment.comment.comment.nil?
      return n
    end
    return comment_distance(comment.comment.comment,n+1)
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def dumpster
    @post = Post.find(params[:id])
    @post.update_attribute(:in_dumpster, true)
    redirect_to posts_path
  end

  def dumpsterout
    @post = Post.find(params[:id])
    @post.update_attribute(:in_dumpster, false)
    redirect_to posts_path
  end
  def last_post
    @latest_post = Post.order(:id).last
    redirect_to last_post_post_path
  end
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :avatar, :description, :up_vote_amount, :down_vote_amount, :date, :city, :country, :gps_location, :image, :file_atachment, :open, :solved, :innapropiated_count, :in_dumpster, :is_hidden, :user_id, :zone_id).merge(user_id: current_user.id)
    end
end
