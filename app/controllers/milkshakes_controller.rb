class MilkshakesController < ApplicationController
  before_action :find_index, only: %i[show destroy]

  def home

  end
  
  def index
    @milkshakes = Milkshake.all
  end

  def show
  end

  def new
    @milkshake = Milkshake.new
  end

  def create
    @milkshake = Milkshake.new(milkshake_params)
    if @milkshake.save
      redirect_to milkshake_path(@milkshake)
    else
      render :new
    end
  end

  def destroy
    @milkshake.destroy
    redirect_to milkshakes_path
  end

  private

  def find_index
    @milkshake = Milkshake.find(params[:id])
  end

  def milkshake_params
    params.require(:milkshake).permit(:name, :description, :price, :photo)
  end
end