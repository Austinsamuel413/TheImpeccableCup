class WeatherType < ActiveRecord::Base
  has_many :beans
  belongs_to :mood
end
