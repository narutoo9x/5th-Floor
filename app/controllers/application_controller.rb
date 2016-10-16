class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_order 

  def current_order
    @current_order = Order.last 
    unless @current_order
      @current_order = Order.create! name: "Guest", address: "Guest address"
    end
    @current_order #return this if last is nil
  end

end
