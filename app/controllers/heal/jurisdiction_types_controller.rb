class Heal::JurisdictionTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_jurisdiction_type, only: [:show, :edit, :update, :destroy]

  # GET /jurisdiction_types
  # GET /jurisdiction_types.json
  def index
    @jurisdiction_types = current_db.jurisdiction_types.order(:order_in_list)
  end

  # GET /jurisdiction_types/1
  # GET /jurisdiction_types/1.json
  def show
  end

  # GET /jurisdiction_types/new
  def new
    @jurisdiction_type = Heal::JurisdictionType.new
  end

  # GET /jurisdiction_types/1/edit
  def edit
  end

  # POST /jurisdiction_types
  # POST /jurisdiction_types.json
  def create
    @jurisdiction_type = Heal::JurisdictionType.new(jurisdiction_type_params)
    @jurisdiction_type.database_instance = current_db

    respond_to do |format|
      if @jurisdiction_type.save
        format.html { redirect_to heal_jurisdiction_types_url, notice: 'Jurisdiction type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jurisdiction_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @jurisdiction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jurisdiction_types/1
  # PATCH/PUT /jurisdiction_types/1.json
  def update
    respond_to do |format|
      if @jurisdiction_type.update(jurisdiction_type_params)
        format.html { redirect_to heal_jurisdiction_types_url, notice: 'Jurisdiction type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jurisdiction_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jurisdiction_types/1
  # DELETE /jurisdiction_types/1.json
  def destroy
    notice = 'Jurisdiction type was successfully destroyed'
    begin
      @jurisdiction_type.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @jurisdiction_type.errors.add(:base, e)
      notice = "Jurisdiction type could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_jurisdiction_types_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jurisdiction_type
      @jurisdiction_type = current_db.jurisdiction_types.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jurisdiction_type_params
      params.require(:heal_jurisdiction_type).permit(:name, :order_in_list)
    end
end
