class LocationsController < ApplicationController

  def index
    @locations = Location.all
    # @location_data = Location.find(params[:id])
    # @forecast = ForecastIO.forecast(@location_data.latitude, @location_data.longitude)

  end

  def show
    @location_data = Location.find_by(id: params[:id])
    puts "&&-Locationdata...show-xx"*44
    pp @location_data
    @forecast_data = ForecastIO.forecast(37.8267, -122.423)
    # pp "---*WeatherData*----"*50
    # pp @forecast_data
    #  WeatherType.where("min_temp > ?", 40).where("min_humidity < ? ", 0.8)
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location].permit(:address, :longitude, :latitude))
    if @location.save
      redirect_to locations_path, :notice => "Successfully created location."
    else
      redirect_to "locations#new"
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find_by(id: params[:id])


    # @location.update( address: params[:location][:address] )
      if @location.update(address: params[:location][:address])
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


# railss console tessts
#
# fc = ForecastIO.forecast(«lat», «long»)
# Query
# wt_temps_identified = WeatherType.where("min_temp > ?", fc.currently.temperature ).where("max_temp < ? ", fc.currenlty.temperature).where("min_humidity > ?", fc.currently.humidity ).where("max_humidity < ? ", fc.currently.humidity)
