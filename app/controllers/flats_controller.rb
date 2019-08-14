class FlatsController < ApplicationController

  before_action :set_flats, only: [:show, :edit, :update]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(flat)
    else
      render :new
    end
  end

  def destroy
    @flat = flat.find(params[:id])
    @flat.destroy
  end

  private

  def flat_params
    params.require(:flat).permit(
      :name,
      :address,
      :description,
      :price_per_night,
      :number_of_guests
    )
  end

  def set_flats
    @flat = Flat.find(params[:id])
  end
end
