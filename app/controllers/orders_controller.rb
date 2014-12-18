class OrdersController < ApplicationController
  before_action :verify_logged_in

  def index
  	@orders = Order.all.sort_by(&:start_date)
  end

  def new
  	@order = Order.new
  end

  def edit
  	@order = Order.find(params[:id])
  end

  def show
  	@order = Order.find(params[:id])
  end

  def create
  	@order = Order.new(order_params)

  	if @order.save
  		flash[:notice] = "Successfully created order."
  		redirect_to action: 'index'
  	else
  		render action: 'new'
  	end
  end

  def update
  	@order = Order.find(params[:id])

  	if @order.update order_params
      	flash[:notice] = "Successfully updated order."
      	redirect_to action: 'index'
  	else
  		render action: 'edit'
    end
  end

  def destroy
    ord = Order.find(params[:id])
    ord.destroy
  	redirect_to orders_path
  end

  private

  def order_params
  	params.require(:order).permit(
  		:customer_id, :container_id, :order_num, :po_num, :start_date, :cancel_date, :num_cartons
  	)
  end

end
