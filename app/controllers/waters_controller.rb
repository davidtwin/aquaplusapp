class WatersController < ApplicationController
  before_action :set_water, only: [:show, :update, :destroy]

  # GET /waters
  def index
    @waters = Water.all

    render json: @waters
  end

  # GET /waters/1
  def show
    render json: @water
  end

  # POST /waters
  def create
    @water = Water.new(water_params)

    if @water.save
      render json: @water, status: :created, location: @water
    else
      render json: @water.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /waters/1
  def update
    if @water.update(water_params)
      render json: @water
    else
      render json: @water.errors, status: :unprocessable_entity
    end
  end

  # DELETE /waters/1
  def destroy
    @water.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water
      @water = Water.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def water_params
      params.require(:water).permit(:customer_id, :address1, :address2, :address3, :city, :postcode, :day)
    end
end
