class OderItemsController < ApplicationController

  def create
    @order_item = OrderItem.create order_item_params
    @order_item.order = current_order
    if @order_item.save
      redirect_to menu_path
    else
      raise "cannot add to order. #{@order_item.errors.messages.to_sentence}"
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :food_item_id)
  end
end
