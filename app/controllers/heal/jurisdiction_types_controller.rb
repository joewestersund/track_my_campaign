class Heal::JurisdictionTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_jurisdiction_type, only: [:show, :edit, :update, :destroy]

  # GET /jurisdiction_types
  # GET /jurisdiction_types.json
  def index
    @jurisdiction_types = JurisdictionType.all
  end

  # GET /jurisdiction_types/1
  # GET /jurisdiction_types/1.json
  def show
  end

  # GET /jurisdiction_types/new
  def new
    @jurisdiction_type = JurisdictionType.new
  end

  # GET /jurisdiction_types/1/edit
  def edit
  end

  # POST /jurisdiction_types
  # POST /jurisdiction_types.json
  def create
    @jurisdiction_type = JurisdictionType.new(jurisdiction_type_params)

    respond_to do |format|
      if @jurisdiction_type.save
        format.html { redirect_to @jurisdiction_type, notice: 'Jurisdiction type was successfully created.' }
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
        format.html { redirect_to @jurisdiction_type, notice: 'Jurisdiction type was successfully updated.' }
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
    @jurisdiction_type.destroy
    respond_to do |format|
      format.html { redirect_to jurisdiction_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jurisdiction_type
      @jurisdiction_type = JurisdictionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jurisdiction_type_params
      params.require(:jurisdiction_type).permit(:database_instance_id, :name, :order_in_list)
    end
end
