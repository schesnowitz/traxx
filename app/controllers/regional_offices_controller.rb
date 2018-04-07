class RegionalOfficesController < ApplicationController
  before_action :set_regional_office, only: [:show, :edit, :update, :destroy]

  # GET /regional_offices
  # GET /regional_offices.json
  def index
    @regional_offices = RegionalOffice.all
  end

  # GET /regional_offices/1
  # GET /regional_offices/1.json
  def show
  end

  # GET /regional_offices/new
  def new
    @three_pl = ThreePl.find(params[:three_pl_id])
    @regional_office = @three_pl.regional_offices.new
  end

  # GET /regional_offices/1/edit
  def edit
  end

  # POST /regional_offices
  # POST /regional_offices.json
  def create
    @three_pl = ThreePl.find(params[:three_pl_id])
    @regional_office = @three_pl.regional_offices.new(regional_office_params)
    respond_to do |format|
      if @regional_office.save
        format.html { redirect_to three_pl_path(@three_pl), notice: 'Regional office was successfully created.' }
        format.json { render :show, status: :created, location: @regional_office }
      else
        
        flash[:danger] = "#{@regional_office.errors.full_messages.to_sentence}" 
        format.html { redirect_to_back }
        format.json { render json: @regional_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regional_offices/1
  # PATCH/PUT /regional_offices/1.json
  def update
    respond_to do |format|
      if @regional_office.update(regional_office_params)
        format.html { redirect_to @regional_office, notice: 'Regional office was successfully updated.' }
        format.json { render :show, status: :ok, location: @regional_office }
      else
        flash[:danger] = "#{@regional_office.errors.full_messages.to_sentence}" 
        format.html { redirect_to_back }
        format.json { render json: @regional_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regional_offices/1
  # DELETE /regional_offices/1.json
  def destroy
    @regional_office.destroy
    respond_to do |format|
      format.html { redirect_to regional_offices_url, notice: 'Regional office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional_office
      @regional_office = RegionalOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regional_office_params 
      params.require(:regional_office).permit(:office_description, :street, :city, :state, :postal, :phone, :fax, :email, :notes, :three_pl_id)
    end
end
