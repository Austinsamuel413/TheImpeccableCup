class CreateWeatherTypes < ActiveRecord::Migration
  def change
    create_table :weather_types do |t|
      t.string :description
      t.string :summary
      t.integer :max_temp
      t.integer :min_temp
      t.decimal :max_humidity
      t.decimal :min_humidity

      t.integer :mood_id
      t.timestamps null: false
    end

    add_column :beans, :weather_type_id, :integer
  end
end
