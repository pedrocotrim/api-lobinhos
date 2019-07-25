class WolvesController < ApplicationController
  before_action :set_wolf, only: [:show, :update, :destroy]

  # GET /wolves
  def index
    @wolves = Wolf.all - Wolf.joins("INNER JOIN adoptions ON adoptions.wolf_id=wolves.id")

    render json: @wolves
  end

  # GET /wolves/1
  def show
    render json: @wolf
  end

  # POST /wolves
  def create
    @wolf = Wolf.new(wolf_params)

    if @wolf.save
      render json: @wolf, status: :created, location: @wolf
    else
      render json: @wolf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wolves/1
  def update
    if @wolf.update(wolf_params)
      render json: @wolf
    else
      render json: @wolf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wolves/1
  def destroy
    @wolf.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wolf
      @wolf = Wolf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wolf_params
      params.require(:wolf).permit(:photo, :age, :name, :description)
    end
end
