class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :require_user, :require_admin, :open_cart

  def require_admin
    redirect_to '/' unless current_user.admin?
  end

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
 end

 def current_restaurant
   current_user.restaurant if current_user
 end

 def require_user
    redirect_to '/' unless current_user
  end

  # def open_cart(order)
  #   active_cart = current_user.carts.find_by(status: 'active').order(created_at: :desc)
  #   if active_cart # if active cart exist
  #     active_cart.orders << order
  #   else # if active cart does not exist
  #     active_card = current_user.carts.create
  #     active_cart.orders << order
  #   end
  # end


end
