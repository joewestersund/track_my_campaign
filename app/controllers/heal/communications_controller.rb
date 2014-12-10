class Heal::CommunicationsController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_communication, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit, :index]

  # GET /communications
  # GET /communications.json
  def index

    conditions_string, parameters_hash, join_tables = get_conditions
    conditions = [conditions_string, parameters_hash]

    if join_tables.nil?
      @communications = current_db.communications.where(conditions)
    else
      @communications = current_db.communications.joins(join_tables).where(conditions)
    end

    if request.format == :html
      #only do paging if in html format, not in xlsx
      @communications = @communications.order(date: :desc).page(params[:page]).per_page(page_size)
    else
      # order by date ascending for xlsx format
      @communications = @communications.order(:date)
    end

    respond_to do |format|
      format.html
      #format.xls
      format.xlsx
    end
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

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:date,">=",:min_date,params)
      sf.add_condition(:date,"<=",:max_date,params)
      sf.add_condition(:duration_minutes,">=",:min_duration,params)
      sf.add_condition(:duration_minutes,"<=",:max_duration,params)
      sf.add_condition(:communication_type_id,"=",:communication_type_id,params)
      sf.add_condition(:event_name,"ILIKE",:event_name,params)
      sf.add_condition(:interest_level_id,"=",:interest_level_id,params)
      sf.add_condition(:others_involved,"ILIKE",:others_involved,params)
      sf.add_condition(:notes,"ILIKE",:notes,params)

      sf.add_condition(:topic_id,"=",:topic_id, params,{join_table: :topics, join_object_name: :communications_topics})
      sf.add_condition(:contact_id,"=",:contact_id, params,{join_table: :contacts, join_object_name: :communications_contacts})
      sf.add_condition(:city_id,"=",:city_id, params,{join_table: :cities, join_object_name: :cities_communications})
      sf.add_condition(:user_id,"=",:staff_involved_id, params,{join_table: :staff_involved, join_object_name: :communications_staff_involved})

      sf.get_search_filter
    end
end
