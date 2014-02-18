class Heal::OrganizationTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_organization_type, only: [:show, :edit, :update, :destroy]

  # GET /organization_types
  # GET /organization_types.json
  def index
    @organization_types = current_db.organization_types.order(:order_in_list)
  end

  # GET /organization_types/1
  # GET /organization_types/1.json
  def show
  end

  # GET /organization_types/new
  def new
    @organization_type = Heal::OrganizationType.new
  end

  # GET /organization_types/1/edit
  def edit
  end

  # POST /organization_types
  # POST /organization_types.json
  def create
    @organization_type = Heal::OrganizationType.new(organization_type_params)
    @organization_type.database_instance = current_db

    respond_to do |format|
      if @organization_type.save
        format.html { redirect_to heal_organization_types_url, notice: 'Organization type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @organization_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @organization_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_types/1
  # PATCH/PUT /organization_types/1.json
  def update
    respond_to do |format|
      if @organization_type.update(organization_type_params)
        format.html { redirect_to heal_organization_types_url, notice: 'Organization type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @organization_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_types/1
  # DELETE /organization_types/1.json
  def destroy
    @organization_type.destroy
    respond_to do |format|
      format.html { redirect_to heal_organization_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_type
      @organization_type = current_db.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_type_params
      params.require(:heal_organization_type).permit( :name, :order_in_list)
    end
end
