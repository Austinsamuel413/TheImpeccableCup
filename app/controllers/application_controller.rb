require 'csv'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action do
      @current_user = User.find_by id: session[:user_id]

      pp "-*read_CSV-*"*77
      CSV.foreach('./data/coffee.csv', {headers: true}) do |data|
        pp data["Region"]
      end

    end

    def authenticate_user!
      if @current_user.blank?
        redirect_to sign_in_path, notice: "Please Sign In"
      end
    end
end
