class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :region
      t.string :body
      t.string :acidity
      t.string :flavor

      t.timestamps null: false
    end
  end
end
