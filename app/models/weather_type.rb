class WeatherType < ActiveRecord::Base
  belongs_to :beans
  belongs_to :mood
end
