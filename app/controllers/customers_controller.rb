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

  def create
  	@customer = Customer.new(customer_params)

  	if @customer.save
  		flash[:notice] = "Successfully created art car!"
  		redirect_to action: 'index'
  	else
  		render action: 'new'
  	end
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


  	# WHY DOES THIS METHOD STILL CREATE A BLANK CUSTOMER IN DB??
 #  before_filter :check_for_cancel, only: [:create, :update]

 #  def check_for_cancel
	# if params[:commit] == "Cancel"
	# 	redirect_to customers_path
	# end
 #  end



  private

  def customer_params
  	params.require(:customer).permit(
  		:customer_id, :name
  	)
  end
end
