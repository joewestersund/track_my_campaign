class Heal::CommunicationsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_communication, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit]

  # GET /communications
  # GET /communications.json
  def index
    @communications = current_db.communications.order(date: :desc)
  end

  # GET /communications/1
  # GET /communications/1.json
  def show
  end

  # GET /communications/new
  def new
    @communication = Heal::Communication.new
    @communication.date = Date.today
  end

  # GET /communications/1/edit
  def edit
  end

  # POST /communications
  # POST /communications.json
  def create
    @communication = Heal::Communication.new(communication_params)
    @communication.database_instance = current_db

    respond_to do |format|
      if @communication.save
        format.html { redirect_to @communication, notice: 'Communication was successfully created.' }
        format.json { render action: 'show', status: :created, location: @communication }
      else
        set_select_options
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
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communications/1
  # DELETE /communications/1.json
  def destroy
    notice = 'Communication was successfully destroyed'
    begin
      @communication.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @communication.errors.add(:base, e)
      notice = "Communication could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_communications_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication
      @users = current_db.users
      @communication = current_db.communications.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_params
      params.require(:heal_communication).permit(:date, :duration_minutes, :communication_type_id, :event_name, {topic_ids: []}, :interest_level_id, {contact_ids: []}, :others_involved, {city_ids: []}, {staff_involved_ids: []}, :notes)
    end

    def set_select_options
      @communication_types = current_db.communication_types.order(:order_in_list)
      @interest_levels = current_db.interest_levels.order(:order_in_list)
      @topics = current_db.topics.order(:order_in_list)
      @contacts = current_db.contacts.order(:first_name, :last_name)
      @cities = current_db.cities.order(:name)
      @users = current_db.users.order(:first_name, :last_name)
    end
end
