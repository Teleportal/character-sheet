class KlassesController < ApplicationController
  def show
    @klass = Klass.find(params[:id])
    render 'show.json.jbuilder'
  end
end
