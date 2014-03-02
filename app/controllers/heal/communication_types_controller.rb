class Heal::CommunicationTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_communication_type, only: [:show, :edit, :update, :destroy]

  # GET /communication_types
  # GET /communication_types.json
  def index
    @communication_types = current_db.communication_types.order(:order_in_list)
  end

  # GET /communication_types/1
  # GET /communication_types/1.json
  def show
  end

  # GET /communication_types/new
  def new
    @communication_type = Heal::CommunicationType.new
  end

  # GET /communication_types/1/edit
  def edit
  end

  # POST /communication_types
  # POST /communication_types.json
  def create
    @communication_type = Heal::CommunicationType.new(communication_type_params)
    @communication_type.database_instance = current_db

    respond_to do |format|
      if @communication_type.save
        format.html { redirect_to heal_communication_types_url, notice: 'Communication type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @communication_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @communication_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communication_types/1
  # PATCH/PUT /communication_types/1.json
  def update
    respond_to do |format|
      if @communication_type.update(communication_type_params)
        format.html { redirect_to heal_communication_types_url, notice: 'Communication type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @communication_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_types/1
  # DELETE /communication_types/1.json
  def destroy
    notice = 'Communication type was successfully destroyed'
    begin
      @communication_type.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @communication_type.errors.add(:base, e)
      notice = "Communication type could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_communication_types_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_type
      @communication_type = current_db.communication_types.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_type_params
      params.require(:heal_communication_type).permit(:database_instance_id, :name, :order_in_list)
    end
end
