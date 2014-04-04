class ContainersController < ApplicationController
  before_action :verify_logged_in

  def index
  	@containers = Container.all.sort_by(&:est_arrival).reverse
  end

  def new
  	@container = Container.new
  end

  def edit
  	@container = Container.find(params[:id])
  end

  def show
  	@container = Container.find(params[:id])
  end

  def create
  	@container = Container.new(container_params)

  	if @container.save
  		flash[:notice] = "Successfully created container."
  		redirect_to action: 'index'
  	else
  		render action: 'new'
  	end
  end

  def update
  	@container = Container.find(params[:id])
  	
  	if @container.update container_params
  		flash[:notice] = "Successfully updated container."
  		redirect_to action: 'index'
  	else
  		render action: 'edit'
  	end
  end

  def destroy
  	con = Container.find(params[:id])
  	con.destroy
  	redirect_to containers_path
  end

  private

  def container_params
  	params.require(:container).permit(
  		:container_num, :num_cartons, :est_arrival, :arrival
  	)
  end
  
end
