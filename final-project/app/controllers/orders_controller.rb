class OrdersController < ApplicationController
  before_action :require_user

 # GET /todo_lists
 # GET /todo_lists.json
 def index
   @orders = Order.all
 end

 def checkout
   @cart = current_user.open_cart
   @orders = @cart.orders
 end

 # POST /todo_lists
 # POST /todo_lists.json
 def create

   @order = Order.create(order_params)
   cart = current_user.open_cart(@order)

   respond_to do |format|
     if @order
       format.html { redirect_to '/restaurants/:id/menus', notice: 'Todo list was successfully created.' }
       format.json { render :show, status: :created, location: @order }
     else
       format.html { render :new }
       format.json { render json: @order.errors, status: :unprocessable_entity }
     end
   end
 end



 # DELETE /todo_lists/1
 # DELETE /todo_lists/1.json
 def destroy
   @order.destroy
   respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
 end

 private

   # Never trust parameters from the scary internet, only allow the white list through.
   def order_params
     params.require(:order).permit(:user_id, :item_id)
   end
end
