class ShipmentsController < ApplicationController
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]

  # GET /shipments
  # GET /shipments.json
  def index
    @shipments = Shipment.all
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments
  # POST /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: 'Shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_params
      params.require(:shipment).permit(:commodity, 
                                        :weight, 
                                        :miles_or_km, 
                                        :load_size, 
                                        :miles, 
                                        :kilometers, 
                                        :invoice_price, 
                                        :booking_fee, 
                                        :percent_deducted, 
                                        :total_company_expenses, 
                                        :rate_to_owner_operator, 
                                        :percent_coverted_to_dollars, 
                                        :driver_cents_pm, 
                                        :rate_after_booking_fee, 
                                        :agent_fee, 
                                        :pick_up_date, 
                                        :pick_up_time, 
                                        :delivery_date, 
                                        :delivery_time, 
                                        :delivery_notes, 
                                        :equipment_type, 
                                        :status_name, 
                                        :updated_by, 
                                        :special_instructions, 
                                        :dimentions, 
                                        :origin_street, 
                                        :origin_city, 
                                        :origin_state_provence, 
                                        :origin_postal_code, 
                                        :origin_phone, 
                                        :origin_contact, 
                                        :destination_street, 
                                        :destination_city, 
                                        :destination_state_provence, 
                                        :destination_postal_code, 
                                        :destination_phone, 
                                        :destination_contact, 
                                        :shipper_company_name, 
                                        :receiver_company_name, 
                                        :origin_latitude, 
                                        :origin_longitude, 
                                        :destination_latitude, 
                                        :destination_longitude, 
                                        :percentage_id, 
                                        :kilograms, :pounds, 
                                        :is_kilograms, 
                                        :is_pounds, 
                                        :is_hazmat, 
                                        :needs_temp_control, 
                                        :is_fahrenheit, 
                                        :is_celsius, 
                                        :fahrenheit, 
                                        :celsius, 
                                        :pick_up_notes, 
                                        :broker_shipper_load_id, 
                                        :driver_id, 
                                        :broker_profile_id, 
                                        :dispatcher_id,
                                        :description,
                                        :broker_rep_name,
                                        :broker_rep_email,
                                        :broker_rep_number,
                                        :broker_rep_cell,
                                        :broker_after_hours_instructions,
                                        :has_multiple_pd,
                                        :vehcile_id

                                        )
    end
end
