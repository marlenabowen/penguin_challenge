class PenguinsController < ApplicationController
  def index
    @penguins = Penguin.all
  end

  def show
    @penguin = Penguin.find(params[:id])
  end

  def new
  end

  def create
    @penguin = Penguin.new(penguin_params)

    @penguin.save
    redirect_to @penguin
  end

  private

  def penguin_params
    params.require(:penguin).permit(:species, :image)
  end
end
