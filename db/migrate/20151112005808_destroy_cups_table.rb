class DestroyCupsTable < ActiveRecord::Migration
  def change
    drop_table :cups
  end
end
