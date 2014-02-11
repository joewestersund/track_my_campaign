class Heal::MilestoneAchievementsController < ApplicationController
  before_action :set_milestone_achievement, only: [:show, :edit, :update, :destroy]

  # GET /milestone_achievements
  # GET /milestone_achievements.json
  def index
    @milestone_achievements = MilestoneAchievement.all
  end

  # GET /milestone_achievements/1
  # GET /milestone_achievements/1.json
  def show
  end

  # GET /milestone_achievements/new
  def new
    @milestone_achievement = MilestoneAchievement.new
  end

  # GET /milestone_achievements/1/edit
  def edit
  end

  # POST /milestone_achievements
  # POST /milestone_achievements.json
  def create
    @milestone_achievement = MilestoneAchievement.new(milestone_achievement_params)

    respond_to do |format|
      if @milestone_achievement.save
        format.html { redirect_to @milestone_achievement, notice: 'Milestone achievement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @milestone_achievement }
      else
        format.html { render action: 'new' }
        format.json { render json: @milestone_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestone_achievements/1
  # PATCH/PUT /milestone_achievements/1.json
  def update
    respond_to do |format|
      if @milestone_achievement.update(milestone_achievement_params)
        format.html { redirect_to @milestone_achievement, notice: 'Milestone achievement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @milestone_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestone_achievements/1
  # DELETE /milestone_achievements/1.json
  def destroy
    @milestone_achievement.destroy
    respond_to do |format|
      format.html { redirect_to milestone_achievements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone_achievement
      @milestone_achievement = MilestoneAchievement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_achievement_params
      params.require(:milestone_achievement).permit(:database_instance_id, :milestone_id, :city_id, :status_type_id, :completion_date, :notes, :user_id)
    end
end
