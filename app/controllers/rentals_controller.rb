class RentalsController < ApplicationController
  before_action :find_rental, only: [:show, :edit, :update, :destroy]
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.create rental_params
    if @rental.save == true
      redirect_to rentals_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @rental.update_attributes rental_params
    redirect_to rentals_path
  end

  def destroy
    @rental.delete
    redirect_to rentals_path
  end
private
  def rental_params
    params.require(:rental).permit(:description, :address)
  end
  def find_rental
    @rental = Rental.find params[:id]
  end
end
