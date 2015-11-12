class AddNameToMoodsTable < ActiveRecord::Migration
  def change
    add_column(:moods, :name, :string)
    add_column(:moods, :description, :string)
  end
end
