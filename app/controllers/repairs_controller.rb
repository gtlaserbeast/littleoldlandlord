class RepairsController < ApplicationController
  before_action :find_repair, only: [:show, :edit, :update, :destroy]
  before_action :find_rental, only: [:new, :create, :edit, :update, :destroy]
  def index
    @repairs = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.create repair_params
    if @repair.save == true
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @repair.update_attributes repair_params
    redirect_to rental_path(@rental)
  end

  def destroy
    @repair.delete
    redirect_to rental_path(@rental)
  end
private
  def find_rental
      @rental = Rental.find params[:rental_id]
  end

  def repair_params
    params.require(:repair).permit(:description, :category, :state, :rental_id)
  end
  def find_repair
    @repair = Repair.find params[:id]
  end
end
