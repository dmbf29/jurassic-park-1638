class PagesController < ApplicationController
  def home
    @parks = Park.order(name: :asc)
  end
end
