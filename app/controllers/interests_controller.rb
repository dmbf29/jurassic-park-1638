class InterestsController < ApplicationController

  # '/dinosaurs/1/interests/new'
  def new
    # load things for the form
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @interest = Interest.new
    # @hobbies = Hobby.order(name: :asc)
    # @hobbies = @dinosaur.hobbies
    @hobbies = Hobby.where.not(id: @dinosaur.hobbies).order(name: :asc)
  end

  # post '/dinosaurs/1/interests'
  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @interest = Interest.new(interest_params)
    @interest.dinosaur = @dinosaur
    if @interest.save
      redirect_to park_path(@dinosaur.park)
    else
      @hobbies = Hobby.where.not(id: @dinosaur.hobbies).order(name: :asc)
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:hobby_id)
  end
end
