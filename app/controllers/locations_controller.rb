class LocationsController < ApplicationController

  def index
    @locations = Location.all
    # @location_data = Location.find(params[:id])
    # @forecast = ForecastIO.forecast(@location_data.latitude, @location_data.longitude)

  end

  def show
    @location_data = Location.find(params[:id])
    @forecast_data = ForecastIO.forecast(37.8267, -122.423)
    # pp "---*WeatherData*----"*50
    # pp @forecast_data
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location].permit(:address, :longitude, :latitude))
    if @location.save
      redirect_to @location, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, :notice  => "Successfully updated location."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url, :notice => "Successfully destroyed location."
  end
end
