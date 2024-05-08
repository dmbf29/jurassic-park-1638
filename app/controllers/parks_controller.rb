class ParksController < ApplicationController

  # '/parks/1'
  def show
    @park = Park.find(params[:id])
  end
end
