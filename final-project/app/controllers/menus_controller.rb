class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :require_user

 # GET /todo_lists
 # GET /todo_lists.json
 def index
   @restaurant = Restaurant.find(params[:restaurant_id])
   @menus = @restaurant.menus
   @order = Order.new
 end

 # GET /todo_lists/1
 # GET /todo_lists/1.json
 def show
   @menu = Menu.find(params[:id])
 end

 # GET /todo_lists/new
 def new
   @menu = Menu.new
 end

 # GET /todo_lists/1/edit
 def edit
 end



 # POST /todo_lists
 # POST /todo_lists.json
 def create
   @menu = Menu.new(menu_params)

   respond_to do |format|
     if @menu.save
       format.html { redirect_to @menu, notice: 'Todo list was successfully created.' }
       format.json { render :show, status: :created, location: @menu }
     else
       format.html { render :new }
       format.json { render json: @menu.errors, status: :unprocessable_entity }
     end
   end
 end

 # PATCH/PUT /todo_lists/1
 # PATCH/PUT /todo_lists/1.json
 def update
   respond_to do |format|
     if @menu.update(menu_params)
       format.html { redirect_to @menu, notice: 'Todo list was successfully updated.' }
       format.json { render :show, status: :ok, location: @menu }
     else
       format.html { render :edit }
       format.json { render json: @menu.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE /todo_lists/1
 # DELETE /todo_lists/1.json
 def destroy
   @menu.destroy
   respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_menu
     @menu = Menu.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def menu_params
     params.require(:menu).permit(:menu_name)
   end
end
