class ChangeDecimalToFloatOnWeathertable < ActiveRecord::Migration
  def change
    change_column :weather_types, :min_humidity, :float
    change_column :weather_types, :max_humidity, :float
  end
end
