class VehicleLocationsController < ApplicationController
  before_action :set_vehicle_location, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_locations
  # GET /vehicle_locations.json
  def index
    @vehicle_locations = VehicleLocation.all  
  end

  # GET /vehicle_locations/1
  # GET /vehicle_locations/1.json
  def show

  end

  # GET /vehicle_locations/new
  def new
    @vehicle_location = VehicleLocation.new
  end

  # GET /vehicle_locations/1/edit
  def edit
  end

  # POST /vehicle_locations
  # POST /vehicle_locations.json
  def create
    @vehicle_location = VehicleLocation.new(vehicle_location_params)

    respond_to do |format|
      if @vehicle_location.save
        format.html { redirect_to @vehicle_location, notice: 'Vehicle location was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_location }
      else
        format.html { render :new }
        format.json { render json: @vehicle_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_locations/1
  # PATCH/PUT /vehicle_locations/1.json
  def update
    respond_to do |format|
      if @vehicle_location.update(vehicle_location_params)
        format.html { redirect_to @vehicle_location, notice: 'Vehicle location was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_location }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_locations/1
  # DELETE /vehicle_locations/1.json
  def destroy
    @vehicle_location.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_locations_url, notice: 'Vehicle location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_location
      @vehicle_location = VehicleLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_location_params
      params.require(:vehicle_location).permit(:location_id, :time_located_at, :latitude, :longitude, :bearing, :engine_hours, :driver_api_id, :fuel, :odometer, :speed, :location_description, :driver_company_id, :edl_id, :edl_identifier, :edl_model, :api_vehicle_id )
    end
end
