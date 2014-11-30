class Heal::CitiesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit, :index]

  # GET /cities
  # GET /cities.json
  def index
    if params[:city_designation_id].present?
      #only do this join if we're filtering down to only one city_designation.
      #otherwise we might have multiple rows for one city.

      cda_ids = current_db.city_designation_achievements.joins("INNER JOIN
        (select city_id, max(coalesce(cda.date,'1/1/1900')) as maxdate from city_designation_achievements cda
        GROUP BY city_id) AS MAX_QUERY ON city_designation_achievements.city_id = MAX_Query.city_id
        AND coalesce(city_designation_achievements.date,'1/1/1900') = MAX_QUERY.maxdate").where.not(id: nil).select(:id)

      @cities = current_db.cities.joins(:city_designation_achievements).where("city_designation_achievements.id IN (?)", cda_ids)
    else
      @cities = current_db.cities
    end

    @cities = @cities.where(get_conditions).order(:name)

    if request.format == :html
      #only do paging if in html format, not if in xlsx
      @cities = @cities.page(params[:page]).per_page(page_size)
    end

    respond_to do |format|
      format.html
      format.xlsx
    end

  end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = Heal::City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = Heal::City.new(city_params)
    @city.database_instance = current_db

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render action: 'show', status: :created, location: @city }
      else
        set_select_options
        format.html { render action: 'new' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    notice = 'City was successfully destroyed'
    begin
      @city.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @city.errors.add(:base, e)
      notice = "City could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_cities_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = current_db.cities.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:heal_city).permit(:name, :county, :state, :jurisdiction_type_id, :league_division_id, :population, :kp_service_area, :under_resourced_or_disease_burden, :percent_obesity, :state_median_income, :city_median_income, :policy_change_in_progress)
    end

    def set_select_options
      @jurisdiction_types = current_db.jurisdiction_types
      @league_divisions = current_db.league_divisions
      @city_designations = current_db.city_designations
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:name,"ILIKE",:name,params)
      sf.add_condition(:state,"ILIKE",:state,params)
      sf.add_condition(:county,"ILIKE",:county,params)
      sf.add_condition(:jurisdiction_type_id,"=",:jurisdiction_type_id,params)
      sf.add_condition(:league_division_id,"=",:league_division_id,params)
      sf.add_condition(:population,">=",:min_population,params)
      sf.add_condition(:population,"<=",:max_population,params)
      sf.add_condition(:kp_service_area,"=",:kp_service_area,params)
      sf.add_condition(:under_resourced_or_disease_burden,"=",:under_resourced_or_disease_burden,params)
      sf.add_condition(:percent_obesity,">=",:min_percent_obesity,params)
      sf.add_condition(:percent_obesity,"<=",:max_percent_obesity,params)
      sf.add_condition(:state_median_income,">=",:min_state_median_income,params)
      sf.add_condition(:state_median_income,"<=",:max_state_median_income,params)
      sf.add_condition(:city_median_income,">=",:min_city_median_income,params)
      sf.add_condition(:city_median_income,"<=",:max_city_median_income,params)
      sf.add_condition("city_designation_achievements.city_designation_id","=",:city_designation_id,params)
      sf.add_condition(:policy_change_in_progress,"=",:policy_change_in_progress,params)

      sf.get_search_filter
    end
end