class LocationsController < ApplicationController

  def index
    @locations = Location.all
    # @location_data = Location.find(params[:id])
    # @forecast = ForecastIO.forecast(@location_data.latitude, @location_data.longitude)

  end

  def show
    @location_data = Location.find_by(id: params[:id])
    @location_data
    @forecast_data = ForecastIO.forecast("#{@location_data.latitude}", "#{@location_data.longitude}")
    @sample = Bean.all.sample

    # 1) Take the forecast data & identify the weather types
    # 2) Find beans associated with weather type
    # BONUS) Use Weathertype to find mood

    fc = @forecast_data
    wthr_types_list = WeatherType.where(
        "min_temp < ?", fc.currently.temperature

      ).where(
        "max_temp > ? ", fc.currently.temperature

      ).where(
        "min_humidity < ?", fc.currently.humidity

      ).where(
        "max_humidity > ? ", fc.currently.humidity
      )

      puts "^^--))"*20
      pp wthr_types_list

    # if @forecast_data.currently.temperature > 80
    #    @profile = Bean.all.where(region: ["Brazilian", "Colombian", "Costa Rican", "Ethiopian", "Guatemalan"]).all.sample
    # elsif @forecast_data.currently.temperature < 40
    #    @profile = Bean.all.where(region: ["Haitian", "Hawaiian Kona", "Jamaican Blue Mountain", "Java", "Kenyan"]).all.sample
    # else
    #    @profile = Bean.all.where(region: ["Mexican", "Nicaraguan", "Sumatran", "Tanzanian ", "Yemeni"])
    # end

    @reccommendations = []
    wthr_types_list.each {|wt|
      b = Bean.find_by(id: wt.bean_id).as_json

      b["wt_description"] = wt.description
      b["mood_name"] = Mood.find_by(id: wt.mood_id).name
      @reccommendations.push(b)
    }





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
# wthr_types_identified = WeatherType.where(
#     "min_temp > ?", fc.currently.temperature
#
#   ).where(
#     "max_temp < ? ", fc.currently.temperature
#
#   ).where(
#     "min_humidity > ?", fc.currently.humidity
#
#   ).where(
#     "max_humidity < ? ", fc.currently.humidity
#   )
