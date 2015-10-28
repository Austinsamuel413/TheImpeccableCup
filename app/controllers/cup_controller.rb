require 'csv'
class CupController < ApplicationController
  def beans
    @beans = []
    CSV.foreach(Rails.root + "coffee.csv", headers: true) do |row|
    bean = Bean.new
    bean.name = row.to_h["Name"]
    bean.name = row.to_h["Region"]
    bean.name = row.to_h["Body"]
    bean.name = row.to_h["Acidity"]
    bean.name = row.to_h["Flavor"]
  end

end
