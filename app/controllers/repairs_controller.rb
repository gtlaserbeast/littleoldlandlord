class RepairsController < ApplicationController
  before_action :find_repair, only: [:fix, :schedule, :delay, :show, :edit, :update, :destroy]
  before_action :find_rental, only: [:fix, :schedule, :delay, :show, :new, :create, :edit, :update, :destroy]
  def repairs_index
    @repairs = Repair.all
  end

  def index
    @repairs = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.create repair_params
    if @repair.save == true
      @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
      @client.account.messages.create(from: '+18435939721', to: "+18432633471", body: "#{current_user.name} issued a Repair Request @ #{@repair.rental.address}. #{@repair.category} #{@repair.description}")
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

  def schedule
    @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
    @client.account.messages.create(from: '+18435939721', to: "#{@repair.rental.landlord.phone}", body: "#{current_user.name} issued a Repair Request @ #{@repair.rental.address}. #{@repair.category} #{@repair.description}")
    @repair.schedule!
    redirect_to rental_path(@rental)
  end
  def fix
    @repair.fix!
    redirect_to rental_path(@rental)
  end
  def delay
    @repair.delay!
    redirect_to rental_path(@rental)
  end
private
  def find_rental
      @rental = Rental.find params[:rental_id]
  end

  def repair_params
    params.require(:repair).permit(:description, :category, :state, :rental_id, :author)
  end
  def find_repair
    @repair = Repair.find params[:id]
  end
end
