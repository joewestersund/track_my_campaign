class Heal::CommunicationsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_communication, only: [:show, :edit, :update, :destroy]

  # GET /communications
  # GET /communications.json
  def index
    @communications = Communication.all
  end

  # GET /communications/1
  # GET /communications/1.json
  def show
  end

  # GET /communications/new
  def new
    @communication = Communication.new
  end

  # GET /communications/1/edit
  def edit
  end

  # POST /communications
  # POST /communications.json
  def create
    @communication = Communication.new(communication_params)

    respond_to do |format|
      if @communication.save
        format.html { redirect_to @communication, notice: 'Communication was successfully created.' }
        format.json { render action: 'show', status: :created, location: @communication }
      else
        format.html { render action: 'new' }
        format.json { render json: @communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communications/1
  # PATCH/PUT /communications/1.json
  def update
    respond_to do |format|
      if @communication.update(communication_params)
        format.html { redirect_to @communication, notice: 'Communication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communications/1
  # DELETE /communications/1.json
  def destroy
    @communication.destroy
    respond_to do |format|
      format.html { redirect_to communications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication
      @communication = Communication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_params
      params.require(:communication).permit(:database_instance_id, :date, :duration_minutes, :communication_type_id, :event_name, :contact_interest_level_id, :notes)
    end
end
