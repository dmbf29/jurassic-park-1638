class DinosaursController < ApplicationController

  # get '/parks/1/dinosaurs/new'
  def new
    # just for the form
    @dinosaur = Dinosaur.new
    @park = Park.find(params[:park_id])
  end

  # post '/parks/1/dinosaurs'
  def create
    @park = Park.find(params[:park_id])
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.park = @park
    if @dinosaur.save
      redirect_to park_path(@park)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to park_path(@dinosaur.park), status: :see_other
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :photo)
  end
end
