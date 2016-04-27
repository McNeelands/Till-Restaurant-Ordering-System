class Admin::DashboardsController < ApplicationController
  before_action :require_admin
  before_action :require_user

  def show
    # @menus = Menu.all
    @restaurant = current_restaurant
  end

  def charts
    @orders = Order.all
  end

  private


   def menu_params
     params.require(:menu).permit(:menu_name)
   end

end
