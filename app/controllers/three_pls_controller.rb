class ThreePlsController < ApplicationController
  before_action :set_three_pl, only: [:show, :edit, :update, :destroy]

  # GET /three_pls
  # GET /three_pls.json
  def index
    @three_pls = ThreePl.all
  end

  # GET /three_pls/1
  # GET /three_pls/1.json
  def show
    @regional_office = RegionalOffice.new
    @regional_offices = RegionalOffice.all
  end

  # GET /three_pls/new
  def new
    @three_pl = ThreePl.new
  end

  # GET /three_pls/1/edit
  def edit
  end

  # POST /three_pls
  # POST /three_pls.json
  def create
    @three_pl = ThreePl.new(three_pl_params)

    respond_to do |format|
      if @three_pl.save
        format.html { redirect_to @three_pl, notice: 'Three pl was successfully created.' }
        format.json { render :show, status: :created, location: @three_pl }
      else
        format.html { render :new }
        format.json { render json: @three_pl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /three_pls/1
  # PATCH/PUT /three_pls/1.json
  def update
    respond_to do |format|
      if @three_pl.update(three_pl_params)
        format.html { redirect_to @three_pl, notice: 'Three pl was successfully updated.' }
        format.json { render :show, status: :ok, location: @three_pl }
      else
        format.html { render :edit }
        format.json { render json: @three_pl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /three_pls/1
  # DELETE /three_pls/1.json
  def destroy
    @three_pl.destroy
    respond_to do |format|
      format.html { redirect_to three_pls_url, notice: 'Three pl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_three_pl
      @three_pl = ThreePl.find(params[:id])
    end


    def three_pl_params
      params.require(:three_pl).permit(
        :name, 
        :phone, 
        :fax, 
        :email, 
        :website, 
        :contact_name, 
        :notes, 
        :dot, 
        :mc
        )
    end
end
