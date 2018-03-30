class DriversController < ApplicationController

  def show
    @driver = Driver.find(params[:id])
    @driver_profile = DriverProfile.find(params[:driver_profile_id])
  end
end