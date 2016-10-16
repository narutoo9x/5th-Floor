class WelcomeController < ApplicationController
  def index
    
  end
  
  def menu
    if params[:section]
      @section = Section.where(name: params[:section]).first
      @food_items = @section.food_items
    else
      @food_items = FoodItem.all
    end
  end

  def contact_us
  end
end
