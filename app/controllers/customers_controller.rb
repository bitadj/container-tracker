class CustomersController < ApplicationController
  def index
	@customers = Customer.all
  end

  def new
	@customer = Customer.new
  end

  def edit
	@customer = Customer.find(params[:id])
  end

  def show
	@customer = Customer.find(params[:id])
  end

  def update
	@customer = Customer.find(params[:id])

	if @customer.update customer_params
    	flash[:notice] = "Successfully updated art car!"
    	redirect_to custtion: 'index'
	else
		render action: 'edit'
    end
  	
  end

    def destroy
  	cust = Customer.find(params[:id])
  	cust.destroy
		redirect_to customers_path
  end

  private

  def customer_params
  	params.require(:customer).permit(
  		:customer_id, :name
  	)
  end
end
