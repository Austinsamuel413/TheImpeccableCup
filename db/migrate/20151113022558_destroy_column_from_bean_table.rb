class DestroyColumnFromBeanTable < ActiveRecord::Migration
  def change
    remove_column :beans, :weather_type_id
  end
end
