class RepairsController < ApplicationController
  before_action :find_repair, only: [:show, :edit, :update, :destroy]
  def index
    @repairs = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.create repair_params
    if @repair.save == true
      redirect_to repairs_path
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
    redirect_to repairs_path
  end

  def destroy
    @repair.delete
    redirect_to repairs_path
  end
private
  def repair_params
    params.require(:repair).permit(:description, :address)
  end
  def find_repair
    @repair = Repair.find params[:id]
  end
end
