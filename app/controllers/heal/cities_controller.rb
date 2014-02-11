class Heal::CitiesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)
    @city.database_instance_id = current_db

    respond_to do |format|
      if @city.save
        format.html { redirect_to [:heal, @city], notice: 'City was successfully created.' }
        format.json { render action: 'show', status: :created, location: @city }
      else
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
        format.html { redirect_to [:heal, @city], notice: 'City was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to heal_cities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
      return @city if @city.database_instance == current_db
      nil
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :county, :state, :jurisdiction_type_id, :league_division_id, :population, :kp_service_area, :under_resourced_or_disease_burden, :state_median_income, :city_median_income, :HEAL_city_designation_id)
    end
end