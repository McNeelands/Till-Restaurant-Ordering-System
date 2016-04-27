class RestaurantsController < ApplicationController
  before_action :require_user


 # GET /todo_lists
 # GET /todo_lists.json
 def index
   @restaurants = Restaurant.all
 end




 # POST /todo_lists
 # POST /todo_lists.json
 def create

   @restaurant = Restaurant.create(order_params)

   respond_to do |format|
     if @restaurant
       format.html { redirect_to '/', notice: 'Todo list was successfully created.' }
       format.json { render :show, status: :created, location: @restaurant }
     else
       format.html { render :new }
       format.json { render json: @restaurant.errors, status: :unprocessable_entity }
     end
   end
 end



 # DELETE /todo_lists/1
 # DELETE /todo_lists/1.json
 def destroy
  @restaurant.destroy
   respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
 end

 private

   # Never trust parameters from the scary internet, only allow the white list through.
  #  def order_params
  #    params.require(:restaurant).permit(:user_id, :item_id)
  #  end
end
