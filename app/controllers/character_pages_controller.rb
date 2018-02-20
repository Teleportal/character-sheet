class CharacterPagesController < ApplicationController
  def index
    @character_pages = CharacterPage.where(user_id: current_user.id)

    render 'index.json.jbuilder'
  end

  def create
    @character_page = CharacterPage.new(
                                        user_id: current_user.id,
                                        name: params[:name],
                                        background_id: params[:background_id],
                                        strength: params[:strength],
                                        dexterity: params[:dexterity],
                                        constitution: params[:constitution],
                                        intelligence: params[:intelligence],
                                        wisdom: params[:wisdom],
                                        charisma: params[:charisma],
                                        level: params[:level],
                                        klass_id: params[:klass_id],
                                        alignment: params[:alignment],
                                        personality: params[:personality],
                                        ideals: params[:ideals],
                                        bonds: params[:bonds],
                                        flaws: params[:flaws],
                                        race_id: params[:race_id],
                                        money: params[:money]
                                        )
    if @character_page.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @character_page.errors.full_messages}, status: :unprocessable_untity
    end
  end

  def show
    @character_page = CharacterPage.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    
  end

  def destroy
    
  end
end
