class HealCityDesignationsController < ApplicationController
  before_action :set_heal_city_designation, only: [:show, :edit, :update, :destroy]

  # GET /heal_city_designations
  # GET /heal_city_designations.json
  def index
    @heal_city_designations = HealCityDesignation.all
  end

  # GET /heal_city_designations/1
  # GET /heal_city_designations/1.json
  def show
  end

  # GET /heal_city_designations/new
  def new
    @heal_city_designation = HealCityDesignation.new
  end

  # GET /heal_city_designations/1/edit
  def edit
  end

  # POST /heal_city_designations
  # POST /heal_city_designations.json
  def create
    @heal_city_designation = HealCityDesignation.new(heal_city_designation_params)

    respond_to do |format|
      if @heal_city_designation.save
        format.html { redirect_to @heal_city_designation, notice: 'Heal city designation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @heal_city_designation }
      else
        format.html { render action: 'new' }
        format.json { render json: @heal_city_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heal_city_designations/1
  # PATCH/PUT /heal_city_designations/1.json
  def update
    respond_to do |format|
      if @heal_city_designation.update(heal_city_designation_params)
        format.html { redirect_to @heal_city_designation, notice: 'Heal city designation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @heal_city_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heal_city_designations/1
  # DELETE /heal_city_designations/1.json
  def destroy
    @heal_city_designation.destroy
    respond_to do |format|
      format.html { redirect_to heal_city_designations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heal_city_designation
      @heal_city_designation = HealCityDesignation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heal_city_designation_params
      params.require(:heal_city_designation).permit(:database_instance_id, :name, :order_in_list)
    end
end
