# frozen_string_literal: true

class DosesController < ApplicationController
  before_action :find_index, only: %i[new create]
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.milkshake = @milkshake
    if @dose.save
      redirect_to milkshake_path(@milkshake)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @milkshake = @dose.milkshake
    @dose.destroy
    redirect_to milkshake_path(@milkshake)
  end

  private

  def find_index
    @milkshake = Milkshake.find(params[:milkshake_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :milkshake_id, :ingredient_id)
  end
end
