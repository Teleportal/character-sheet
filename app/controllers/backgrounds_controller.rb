class BackgroundsController < ApplicationController
  def show
    @background = Background.find(params[:id])
    render 'show.json.jbuilder'
  end
end
