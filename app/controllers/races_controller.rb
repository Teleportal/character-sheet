class RacesController < ApplicationController
  def index
    @races = Race.all
    render 'index.json.jbuilder'
  end

  def show
    @race = Race.find(params[:id])
    render 'show.json.jbuilder'
  end
end
