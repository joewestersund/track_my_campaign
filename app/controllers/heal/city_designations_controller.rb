class Heal::CityDesignationsController < ApplicationController
  before_action :set_city_designation, only: [:show, :edit, :update, :destroy]

  # GET /city_designations
  # GET /city_designations.json
  def index
    @city_designations = current_db.city_designations.order(:order_in_list)
  end

  # GET /city_designations/1
  # GET /city_designations/1.json
  def show
  end

  # GET /city_designations/new
  def new
    @city_designation = Heal::CityDesignation.new
  end

  # GET /city_designations/1/edit
  def edit
  end

  # POST /city_designations
  # POST /city_designations.json
  def create
    @city_designation = Heal::CityDesignation.new(city_designation_params)
    @city_designation.database_instance = current_db

    respond_to do |format|
      if @city_designation.save
        format.html { redirect_to @city_designation, notice: 'City designation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @city_designation }
      else
        format.html { render action: 'new' }
        format.json { render json: @city_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_designations/1
  # PATCH/PUT /city_designations/1.json
  def update
    respond_to do |format|
      if @city_designation.update(city_designation_params)
        format.html { redirect_to @city_designation, notice: 'City designation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @city_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_designations/1
  # DELETE /city_designations/1.json
  def destroy
    @city_designation.destroy
    respond_to do |format|
      format.html { redirect_to city_designations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_designation
      @city_designation = current_db.city_designations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_designation_params
      params.require(:heal_city_designation).permit(:name, :order_in_list)
    end
end
