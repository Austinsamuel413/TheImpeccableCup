class AddColumnToWeatherTypeTable < ActiveRecord::Migration
  def change
    add_column :weather_types, :bean_id, :integer
  end
end
