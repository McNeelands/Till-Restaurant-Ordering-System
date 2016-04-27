class Admin::ItemsController < ApplicationController
  before_action :set_menu, except: [:show]
	before_action :set_item, except: [:index, :create, :show, :new]
  before_action :require_user
  before_action :require_admin
  before_action :current_restaurant

  def index
    @menu = Menu.find(params[:menu_id])
    @items = @menu.items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

	def create
		@item = @menu.items.create(item_params)
		redirect_to '/admin/dashboard'
	end

	def destroy
		if @item.destroy
			flash[:success] = "Todo List item was deleted."
		else
			flash[:error] = "Todo List item could not be deleted."
		end
		redirect_to @menu
	end

  def edit
  end

  def update
    respond_to do |format|
      if @item.update(menu_params)
        format.html { redirect_to @item, notice: 'Todo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

	private

  def require_admin
     unless current_user.admin?
       redirect_to root_path
     end
   end

	def set_menu
		@menu = Menu.find(params[:menu_id])
	end

	def set_item
		@item = @menu.items.find(params[:id])
	end

	def item_params
		params[:item].permit(:name, :description, :price, :url)
	end
end
