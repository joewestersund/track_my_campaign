class Heal::CityDesignationAchievementsController < ApplicationController
  before_action :set_city_designation_achievement, only: [:show, :edit, :update, :destroy]

  # GET /city_designation_achievements
  # GET /city_designation_achievements.json
  def index
    @city_designation_achievements = current_db.city_designation_achievements.where(get_conditions).order(:date)
  end

  # GET /city_designation_achievements/1
  # GET /city_designation_achievements/1.json
  def show
  end

  # GET /city_designation_achievements/new
  def new
    @city_designation_achievement = Heal::CityDesignationAchievement.new
  end

  # GET /city_designation_achievements/1/edit
  def edit
  end

  # POST /city_designation_achievements
  # POST /city_designation_achievements.json
  def create
    @city_designation_achievement = Heal::CityDesignationAchievement.new(city_designation_achievement_params)
    @city_designation_achievement.database_instance = current_db

    respond_to do |format|
      if @city_designation_achievement.save
        format.html { redirect_to @city_designation_achievement, notice: 'City designation achievement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @city_designation_achievement }
      else
        format.html { render action: 'new' }
        format.json { render json: @city_designation_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_designation_achievements/1
  # PATCH/PUT /city_designation_achievements/1.json
  def update
    respond_to do |format|
      if @city_designation_achievement.update(city_designation_achievement_params)
        format.html { redirect_to @city_designation_achievement, notice: 'City designation achievement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @city_designation_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_designation_achievements/1
  # DELETE /city_designation_achievements/1.json
  def destroy
    @city_designation_achievement.destroy
    respond_to do |format|
      format.html { redirect_to heal_city_designation_achievements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_designation_achievement
      @city_designation_achievement = current_db.city_designation_achievements.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_designation_achievement_params
      params.require(:city_designation_achievement).permit(:database_instance_id, :date, :city_id, :city_designation_id, :notes)
    end

    def set_select_options
      @cities = current_db.cities
      @city_designations = current_db.city_designations
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:date,">=",:min_date,params)
      sf.add_condition(:date,"<=",:max_date,params)
      sf.add_condition(:city_id,"=",:city_id, params)
      sf.add_condition(:city_designation_id,"=",:city_designation_id,params)
      sf.add_condition(:notes,"ILIKE",:notes,params)

      sf.get_search_filter
    end

end
