class Admin::MenusController < ApplicationController
  before_action :require_admin
  before_action :require_user
  before_action :current_restaurant

  def dashboard
    @menus = Menu.all
  end

  def index
    @restaurant = current_restaurant
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to admin_menus_path
    else
      render :create
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to admin_user_path(@user)
    else
      redirect_to edit_admin_user_path(@user)
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to admin_users_path
  end

  private

  def require_admin
     unless current_user.admin?
       redirect_to root_path
     end
   end

   def menu_params
     params.require(:menu).permit(:menu_name)
   end

end
