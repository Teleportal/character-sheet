class CharacterPagesController < ApplicationController
  def index
    @character_pages = CharacterPage.all
    # .where(user_id: current_user.id)

    render 'index.json.jbuilder'
  end

  def create
    @character_page = CharacterPage.new(
                                        user_id: 1, #current_user.id
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
                                        money: params[:money],
                                        armor_class: params[:armor_class],
                                        hit_points: params[:hit_points]
                                        )
    
    # if @character_page.save
    #   18.times do |i|
    #     skill_test = SkillTest.new(
    #                               skill_id: i,
    #                               character_page_id: @character_page.id,
    #                               proficient: false
    #                             )
    #     skill_test.calculate_bonus
    #     if skill_test.save
    #     else
    #       render json: {errors: skill_test.errors.full_messages}, status: :bad_request
    #     end
    #   end
      
    # end
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
    @character_page = CharacterPage.find(params[:id])
    @character_page.name = params[:name] || @character_page.name
    @character_page.strength = params[:strength] || @character_page.strength
    @character_page.dexterity = params[:dexterity] || @character_page.dexterity
    @character_page.constitution = params[:constitution] || @character_page.constitution
    @character_page.intelligence = params[:intelligence] || @character_page.intelligence
    @character_page.wisdom = params[:wisdom] || @character_page.wisdom
    @character_page.charisma = params[:charisma] || @character_page.charisma
    @character_page.level = params[:level] || @character_page.level
    @character_page.alignment = params[:alignment] || @character_page.alignment
    @character_page.personality = params[:personality] || @character_page.personality
    @character_page.ideals = params[:ideals] || @character_page.ideals
    @character_page.bonds = params[:bonds] || @character_page.bonds
    @character_page.flaws = params[:flaws] || @character_page.flaws
    @character_page.money = params[:money] || @character_page.money
    @character_page.race_id = params[:race_id] || @character_page.race_id
    @character_page.klass_id = params[:klass_id] || @character_page.klass_id
    @character_page.background_id = params[:background_id] || @character_page.background_id

    if @character_page.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @character_page.errors.full_messages}, status: :unprocessable_untity
    end
  end

  def destroy
    @character_page = CharacterPage.find(params[:id])
    @character_page.destroy
    render json: { message: "Character sheet deleted successfully." }
  end
end
