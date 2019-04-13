class InnappropiateRequestsController < ApplicationController
  before_action :set_innappropiate_request, only: [:show, :edit, :update, :destroy]

  # GET /innappropiate_requests
  # GET /innappropiate_requests.json
  def index
    @innappropiate_requests = InnappropiateRequest.all
  end

  # GET /innappropiate_requests/1
  # GET /innappropiate_requests/1.json
  def show
  end

  # GET /innappropiate_requests/new
  def new
    @innappropiate_request = InnappropiateRequest.new
  end

  # GET /innappropiate_requests/1/edit
  def edit
  end

  # POST /innappropiate_requests
  # POST /innappropiate_requests.json
  def create
    @innappropiate_request = InnappropiateRequest.new(innappropiate_request_params)

    respond_to do |format|
      if @innappropiate_request.save
        format.html { redirect_to @innappropiate_request, notice: 'Innappropiate request was successfully created.' }
        format.json { render :show, status: :created, location: @innappropiate_request }
      else
        format.html { render :new }
        format.json { render json: @innappropiate_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /innappropiate_requests/1
  # PATCH/PUT /innappropiate_requests/1.json
  def update
    respond_to do |format|
      if @innappropiate_request.update(innappropiate_request_params)
        format.html { redirect_to @innappropiate_request, notice: 'Innappropiate request was successfully updated.' }
        format.json { render :show, status: :ok, location: @innappropiate_request }
      else
        format.html { render :edit }
        format.json { render json: @innappropiate_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innappropiate_requests/1
  # DELETE /innappropiate_requests/1.json
  def destroy
    @innappropiate_request.destroy
    respond_to do |format|
      format.html { redirect_to innappropiate_requests_url, notice: 'Innappropiate request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innappropiate_request
      @innappropiate_request = InnappropiateRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def innappropiate_request_params
      params.require(:innappropiate_request).permit(:date, :justification, :user_id, :post_id)
    end
end
