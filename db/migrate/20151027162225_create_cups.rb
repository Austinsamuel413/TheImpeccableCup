class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.string :name
      t.string :region
      t.string :body
      t.string :acidity
      t.string :flavor
      t.timestamps null: false
    end
  end
end
