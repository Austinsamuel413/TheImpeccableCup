class Mood < ActiveRecord::Base
  has_many :weather_types
end
