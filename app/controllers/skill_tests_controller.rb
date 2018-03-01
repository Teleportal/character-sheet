class SkillTestsController < ApplicationController

  def create
    @skill_test = SkillTest.new(
                                  skill_id: params[:skill_id],
                                  character_page_id: params[:character_page_id],
                                  proficient: params[:proficient]
                                )
    @skill_test.calculate_bonus
    if @skill_test.save
      render json: {message: 'SkillTest created successfully'}, status: :created
    else
      render json: {errors: @skill_test.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @skill_test = SkillTest.find(params[:id])
    @skill_test.calculate_bonus
    if @skill_test.save
      render json: {message: 'SkillTest updated successfully'}, status: :created
    else
      render json: {errors: @skill_test.errors.full_messages}, status: :bad_request
    end
  end

end
