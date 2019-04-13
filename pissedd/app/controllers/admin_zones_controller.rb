class AdminZonesController < ApplicationController
  before_action :set_admin_zone, only: [:show, :edit, :update, :destroy]

  # GET /admin_zones
  # GET /admin_zones.json
  def index
    @admin_zones = AdminZone.all
  end

  # GET /admin_zones/1
  # GET /admin_zones/1.json
  def show
  end

  # GET /admin_zones/new
  def new
    @admin_zone = AdminZone.new
  end

  # GET /admin_zones/1/edit
  def edit
  end

  # POST /admin_zones
  # POST /admin_zones.json
  def create
    @admin_zone = AdminZone.new(admin_zone_params)

    respond_to do |format|
      if @admin_zone.save
        format.html { redirect_to @admin_zone, notice: 'Admin zone was successfully created.' }
        format.json { render :show, status: :created, location: @admin_zone }
      else
        format.html { render :new }
        format.json { render json: @admin_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_zones/1
  # PATCH/PUT /admin_zones/1.json
  def update
    respond_to do |format|
      if @admin_zone.update(admin_zone_params)
        format.html { redirect_to @admin_zone, notice: 'Admin zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_zone }
      else
        format.html { render :edit }
        format.json { render json: @admin_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_zones/1
  # DELETE /admin_zones/1.json
  def destroy
    @admin_zone.destroy
    respond_to do |format|
      format.html { redirect_to admin_zones_url, notice: 'Admin zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_zone
      @admin_zone = AdminZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_zone_params
      params.require(:admin_zone).permit(:user_id, :zone_id)
    end
end
