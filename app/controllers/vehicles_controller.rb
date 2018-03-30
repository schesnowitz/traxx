class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.all

    id = Vehicle.pluck(:api_id) # integer array

    
  end 

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
    @locations = VehicleLocation.where(api_vehicle_id: @vehicle.api_id)
    @current_location = @locations.last
  end

  # GET /vehicles/new WP0AB2966NS458669
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit

  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end


  def put_request

    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] } 
    request = HTTParty.put("#{@url}/vehicles/#{@vehicle.api_id}", headers: @headers, 
    body: 
    { 
      number: @vehicle.number,
      status: @vehicle.status, 
      ifta: @vehicle.ifta, 
      license_plate_state: @vehicle.license_plate_state, 
      license_plate_number: @vehicle.license_plate_number, 
      metric_units: @vehicle.metric_units, 
      fuel_type: @vehicle.fuel_type, 
      prevent_auto_odometer_entry: @vehicle.prevent_auto_odometer_entry }.to_json)
    # @user_response = JSON.parse(@response.body, object_class: OpenStruct)
    
    # puts @user_response.body, @user_response.message
    puts "request Body: #{request.body}", "request Code: #{request.code}", "request Message: #{request.message}"
  end
  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
        put_request
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def api_update_vehicle
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:api_id, :api_vehicle_company_id, :number, :status, :ifta, :vin, :make, :model, :year, :license_plate_state, :license_plate_number, :metric_units, :fuel_type, :prevent_auto_odometer_entry, :edl_device_id, :edl_identifier, :edl_model, :api_driver_id, :driver_first_name, :driver_last_name, :driver_username, :driver_email, :driver_internal_id, :driver_status, :driver_role)
    end
end
